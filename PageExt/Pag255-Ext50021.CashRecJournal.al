pageextension 50021 CashRecJnlExt extends "Cash Receipt Journal"
{
    layout
    {
        // Add changes to page layout here
        modify(ShortcutDimCode3)
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                CustOpSite: Record "Cust-Op-Site";
                CustOpSiteFull: Record "Cust-Op-Site";
                Custsite: Record "Customer-Site";
                CustSiteFull: Record "Customer-Site";
                Companyinfo: record "Company Information";
            begin
                DimensionValue.reset;
                CustOpSite.Reset();
                FASetup.Get();
                CustOpSiteFull.Reset();
                CustSite.Reset();
                CustSiteFull.Reset();
                Companyinfo.Reset();

                Companyinfo.Get();
                if Companyinfo."Customer Is Operator" then begin
                    if "Account Type" = "Account Type"::Customer then
                        CustSite.SetFilter("Customer No.", "Account No.")
                    else
                        if "Bal. Account Type" = "Bal. Account Type"::Customer then
                            CustSite.SetFilter("Customer No.", "Bal. Account No.");

                    if CustSite.FindFirst() then begin
                        if page.RunModal(50001, CustSite) = Action::LookupOK then
                            SD3 := CustSite."Site Code";
                    end
                end
                else begin
                    if "Account Type" = "Account Type"::Customer then
                        CustOpSite.SetFilter("Customer No.", "Account No.")
                    else
                        if "Bal. Account Type" = "Bal. Account Type"::Customer then
                            CustOpSite.SetFilter("Customer No.", "Bal. Account No.");

                    if CustOpSite.FindFirst() then begin
                        if page.RunModal(50007, CustOpSite) = Action::LookupOK then
                            SD3 := CustOpSite."Site Code";
                    end
                    else begin      //since customer <> operator
                        if page.RunModal(50007, CustOpSiteFull) = Action::LookupOK then
                            SD3 := CustOpSiteFull."Site Code";
                    end;
                end;

                Rec.ValidateShortcutDimCode(3, SD3);

                CurrPage.Update(true);

                //DevOps #619 -- begin
                Contract_CS.reset;
                Contract_CS.SetFilter("Site Code", SD3);
                if Contract_CS.FindFirst() then begin
                    if Contract_CS."Contract Code" <> '' then begin
                        Rec.ValidateShortcutDimCode(6, Contract_CS."Contract Code");
                        CurrPage.Update(true);
                    end;
                end;
                //DevOps #619 -- end
            end;
        }

        modify("Amount (LCY)")
        {
            Visible = SeeLCY;
        }
        modify("Currency Code")
        {
            Visible = true;
        }

        /*modify(ShortcutDimCode4)
        {
            trigger OnLookup(var Text: Text): Boolean
            begin

                if SD3 = '' then Error(Text000);

                DimensionValue.reset;
                Dimset.Reset();
                ParentChild.Reset();

                FASetup.Get();

                ParentChild.SetFilter(Child, FASetup."Site Dimension");
                if ParentChild.FindFirst() then begin
                    Dimset.SetRange("Dimension Set ID", Rec."Dimension Set ID");
                    Dimset.SetFilter("Dimension Code", ParentChild.Parent);
                    if Dimset.FindFirst() then begin
                        DimensionValue.SetFilter(DimensionValue."Dimension Code", FASetup."Site Dimension");
                        DimensionValue.SetFilter(DimensionValue."Parent Code", Dimset."Dimension Value Code");
                    end;
                end;

                if page.RunModal(537, DimensionValue) = Action::LookupOK then
                    SD4 := DimensionValue.Code;

                Rec.ValidateShortcutDimCode(4, SD4);

                CurrPage.Update(true);
            end;

            trigger OnAfterValidate()
            begin
                if SD3 = '' then Error(Text000);
            end;
        }*/
    }

    actions
    {

    }

    var
        DimensionValue: Record "Dimension Value";
        FASetup: Record "FA Setup";
        SD3: Code[20];
        SD4: Code[20];
        ParentChild: Record "Parent Child Relation";
        Dimset: Record "Dimension Set Entry";
        Text000: Label 'You need to choose an operator first';
        Contract_CS: Record "Customer-Site";
        UserSetup: Record "User Setup";
        SeeLCY: Boolean;

    trigger OnOpenPage()
    begin
        UserSetup.Reset();
        if UserSetup.Get(USERID) then
            SeeLCY := UserSetup."See LCY in Journals"
        else
            SeeLCY := false;
    end;
}