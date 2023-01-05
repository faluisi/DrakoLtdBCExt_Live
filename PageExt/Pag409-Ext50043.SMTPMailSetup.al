pageextension 50043 SMTPMailSetup extends "SMTP Mail Setup"
{
    layout
    {
        addafter(General)
        {
            group(ERM)
            {
                Caption = 'Exchange Rate Maintenance';

                field(ERM_From; ERM_From)
                {
                    Caption = 'From';
                    ToolTip = 'E-mail Address that will send notification.';
                    ApplicationArea = All;
                }
                field(ERM_To; ERM_To)
                {
                    Caption = 'To';
                    ToolTip = 'E-mail Addresses that will receive notification.';
                    ApplicationArea = All;
                }
                field(ERM_Subject; ERM_Subject)
                {
                    Caption = 'Subject';
                    ToolTip = 'Notification E-mail Subject';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {

    }

    var

}