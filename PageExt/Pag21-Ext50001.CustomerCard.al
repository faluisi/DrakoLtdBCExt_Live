pageextension 50001 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addbefore(Name)
        {
            field("No. 2"; "No. 2")
            {
                ApplicationArea = All;
            }
        }
        addafter(Name)
        {
            field("Name 2"; "Name 2")
            {
                ApplicationArea = all;
            }

            field("Corporate Name"; "Corporate Name")
            {
                ApplicationArea = All;
                Visible = false;
            }
            field("Customer Since"; "Customer Since")
            {
                ApplicationArea = All;
            }
        }

        addbefore("VAT Registration No.")
        {
            field("Separate Halls Inv."; "Separate Halls Inv.")
            {
                ApplicationArea = All;
                Caption = 'Separate Halls Inv.';
            }
            field("Payment Bank Code"; "Payment Bank Code")
            {
                Caption = 'Payment Bank Account';
            }
        }

    }

    actions
    {
        addlast(navigation)
        {
            group("Customer Sites")
            {
                Image = Warehouse;

                action(Sites)
                {
                    ApplicationArea = All;
                    Image = Warehouse;
                    Visible = ShowSites;
                    trigger OnAction()
                    begin
                        Clear(CustomerSite);
                        Clear(CustomerSiteP);
                        CustomerSite.SetFilter("Customer No.", Rec."No.");
                        CustomerSiteP.SetTableView(CustomerSite);
                        CustomerSiteP.RunModal();
                    end;
                }
            }
        }
    }

    var
        CustomerSiteP: Page "Customer - Site";
        CustomerSite: Record "Customer-Site";
        Operators: Record "Dimension Value";
        OperatorsP: Page "Dimension Values";
        OperatorsXML: XmlPort "Import Operators";
        CurrentCFS: Page "Current Customer FA per Site";
        FAMH: Record "FA Movement History";
        companyinfo: Record "Company Information";
        ShowSites: boolean;

    trigger OnOpenPage()
    begin
        if companyinfo.Get() then begin
            if companyinfo."Customer Is Operator" then
                ShowSites := true
            else
                ShowSites := false;
        end;
    end;
}