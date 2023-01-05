tableextension 50008 SalesLineExt extends "Sales Line"
{
    fields
    {
        //DEVOPS #622 -- begin
        field(50000; "Period Start"; Date)
        {
            Editable = false;
        }
        field(50001; "Period End"; Date)
        {
            Editable = false;
        }
        //DEVOPS #622 -- end
        field(50002; IsPeriodEnabled; Boolean) //used for enabling/disabling date fields on form
        { }

        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                if rec.Type = Rec.Type::"G/L Account" then begin
                    if GlAccount.Get("No.") then begin
                        if GlAccount."Periods Required" then begin
                            //get sales header
                            if SalesHeader.get("Document Type", "Document No.") then begin
                                Rec.Validate("Period Start", SalesHeader."Period Start");
                                Rec.Validate("Period End", SalesHeader."Period End");
                                rec.Modify(false);
                            end;
                        end;
                    end;
                end;
            end;
        }
        //DEVOPS #622 -- end
    }

    var
        GlAccount: Record "G/L Account";
        SalesHeader: Record "Sales Header";

    trigger OnAfterInsert()
    begin
        //UpdateIsPeriodEnabled();  //DEVOPS #622
    end;

    trigger OnAfterModify()
    begin
        //UpdateIsPeriodEnabled();  //DEVOPS #622
    end;

    local procedure UpdateIsPeriodEnabled()
    begin
        if (Type = Type::"G/L Account") AND ("No." <> '') then begin
            GlAccount.SetFilter("No.", "No.");
            if GlAccount.FindFirst() then begin
                if GlAccount."Periods Required" then begin
                    IsPeriodEnabled := true;
                end

                else
                    ClearIsPeriod();
            end
            else
                ClearIsPeriod();
        end
        else
            ClearIsPeriod();
        Modify(false);
    end;

    local procedure ClearIsPeriod()
    begin
        IsPeriodEnabled := false;
        Clear("Period Start");
        Clear("Period End");
    end;

}