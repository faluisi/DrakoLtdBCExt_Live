page 50003 "Sales Report - Posted Entries"
{
    Caption = 'Sales Report - Posted Entries';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Invoice Line";
    SourceTableView = where(Type = FILTER(<> ''));

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                }

                field(DocType; DocType)
                {
                    Caption = 'Doc. Type';
                    ApplicationArea = All;
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(GLName; GLName)
                {
                    Caption = 'G/L Account Name';
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; SIH."Currency Code")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field(LCY_Amount; LCY_Amount)
                {
                    CaptionClass = LCY_Caption;
                    ApplicationArea = All;
                }
                field(ARC_Amount; ARC_Amount)
                {
                    //Caption = 'Add. Reporting Currency Amount';
                    CaptionClass = ARC_Caption;
                    ApplicationArea = all;
                }
                field(Site; SIH.Site)
                {
                    ApplicationArea = All;
                }
                field("Site Name"; SiteName)
                {
                    ApplicationArea = All;
                }
                //DevOps #619 -- begin
                field(Contract; SIH."Contract Code")
                {
                    ApplicationArea = All;
                }
                //DevOps #619 -- end
                field("Period Start"; "Period Start")
                {
                    ApplicationArea = All;
                }
                field("Period End"; "Period End")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
    }

    var

        DocType: Text[10];
        GLAccount: Record "G/L Account";
        GLName: Text[1024];
        SIH: Record "Sales Invoice Header";
        GLSetup: record "General Ledger Setup";
        AddRepCurr: Record Currency;
        ARC_Amount: Decimal;
        ARC_CER: Record "Currency Exchange Rate";
        ARC_Caption: Text[80];
        LCY: Record Currency;
        LCY_CER: Record "Currency Exchange Rate";
        LCY_Amount: Decimal;
        LCY_Caption: Text[80];
        CustSite: Record "Customer-Site";
        SiteName: Text[1024];


    trigger OnOpenPage()
    begin
        DocType := 'Invoice';
        GLSetup.Reset();
        if GLSetup.Get() then begin
            if GLSetup."Additional Reporting Currency" <> '' then begin
                if AddRepCurr.Get(GLSetup."Additional Reporting Currency") then
                    ARC_Caption := 'Add. Reporting Currency Amount (' + AddRepCurr.Symbol + ')';
            end;

            if LCY.Get(GLSetup."LCY Code") then
                LCY_Caption := 'Amount (' + LCY.Symbol + ')';
        end;
    end;

    trigger OnAfterGetRecord()
    begin
        Clear(GLName);
        Clear(ARC_Amount);
        SIH.Reset;
        GLSetup.Reset();
        AddRepCurr.Reset();
        Clear(ARC_CER);

        if rec.Type = rec.Type::"G/L Account" then begin
            if GLAccount.Get("No.") then begin
                GLName := GLAccount.Name;
            end
            else
                GLName := '';
        end
        else
            GLName := '';

        SIH.Get("Document No.");

        //get Additional Reporting Currency
        if GLSetup.Get() then begin
            //get LCY
            LCY.Reset();
            if LCY.get(GLSetup."LCY Code") then begin
                //get exchange rate for posting date
                LCY_CER.reset;
                LCY_Amount := 0;
                if LCY_CER.Get(GLSetup."LCY Code", SIH."Posting Date") then begin
                    LCY_Amount := Rec.Amount / LCY_CER."Exchange Rate Amount";
                end
                else begin  //get closes exchange rate
                    LCY_CER.Reset();
                    LCY_CER.SetCurrentKey("Starting Date");
                    LCY_CER.SetFilter("Currency Code", SIH."Currency Code");
                    LCY_CER.SetFilter("Starting Date", '<=%1', "Posting Date");
                    if LCY_CER.FindLast() then begin
                        LCY_Amount := Rec.Amount / LCY_CER."Exchange Rate Amount";
                    end
                    else
                        LCY_Amount := 0;
                end;
            end;

            if GLSetup."Additional Reporting Currency" <> '' then begin
                AddRepCurr.Reset();
                if AddRepCurr.Get(GLSetup."Additional Reporting Currency") then begin
                    //get exchange rate for the posting date
                    ARC_CER.Reset();
                    ARC_Amount := 0;
                    if ARC_CER.get(GLSetup."Additional Reporting Currency", SIH."Posting Date") then begin
                        ARC_Amount := LCY_Amount / ARC_CER."Exchange Rate Amount";
                    end
                    else begin //get closest Exchange rate
                        ARC_CER.Reset();
                        ARC_CER.SetCurrentKey("Starting Date");
                        ARC_CER.SetFilter("Currency Code", GLSetup."Additional Reporting Currency");
                        ARC_CER.SetFilter("Starting Date", '<=%1', "Posting Date");
                        if ARC_CER.FindLast() then begin
                            ARC_Amount := LCY_Amount / ARC_CER."Exchange Rate Amount";
                        end
                        else
                            ARC_Amount := 0;
                    end;
                end;
            end;
        end;

        //get site name
        CustSite.Reset();
        clear(SiteName);
        if CustSite.get(SIH."Sell-to Customer No.", SIH.Site) then
            SiteName := CustSite."Site Name"
        else
            SiteName := '';
    end;
}