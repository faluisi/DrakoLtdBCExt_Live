/*
----------------------------------------------------------------------------------------------------------------------------------------------
Page Extension Created - DEVOPS #739
----------------------------------------------------------------------------------------------------------------------------------------------
*/
pageextension 50046 PostedSalesInvoicesExt extends "Posted Sales Invoices"
{
    layout
    {
        modify("Document Date")
        {
            Visible = true;
        }
        modify("Posting Date")
        {
            Visible = true;
        }
    }

    actions
    {

    }

    var

}