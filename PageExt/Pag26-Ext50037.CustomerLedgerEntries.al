pageextension 50037 CustomerLedgerEntriesExt extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Posting Date")
        {
            //DEVOPS #742 -- begin
            field("Document Date"; "Document Date")
            {
                ApplicationArea = All;
            }
            //DEVOPS #742 -- end
        }

        //DEVOPS #622 -- begin
        addafter("External Document No.")
        {
            field("Period Start"; "Period Start")
            {
                ApplicationArea = All;
            }
            field("Period End"; "Period End")
            {
                ApplicationArea = All;
            }
        }
        //DEVOPS #622 -- end
    }

    actions
    {

    }

    var

}