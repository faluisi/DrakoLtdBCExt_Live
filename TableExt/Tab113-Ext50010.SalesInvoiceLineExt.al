tableextension 50010 SalesInvoiceLineExt extends "Sales Invoice Line"
{
    fields
    {
        //DEVOPS #622 -- begin
        field(50000; "Period Start"; Date)
        { }
        field(50001; "Period End"; Date)
        { }
        //DEVOPS #622 -- end
    }
}