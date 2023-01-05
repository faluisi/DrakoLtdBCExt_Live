tableextension 50003 SalesInvoiceHederExt extends "Sales Invoice Header"
{
    fields
    {
        field(50000; Site; Code[20])
        {
            TableRelation = "Cust-Op-Site"."Site Code";

            trigger OnValidate()
            begin

            end;
        }
        //DevOps #619 -- begin
        field(50001; "Contract Code"; Code[4])
        {
            TableRelation = "Customer-Site"."Contract Code" WHERE("Customer No." = field("Sell-to Customer No."));

            trigger OnValidate()
            begin

            end;
        }
        //DevOps #619 -- end
        //DEVOPS #622 -- begin
        field(50002; "Period Start"; Date)
        {
        }
        field(50003; "Period End"; Date)
        {
        }
        //DEVOPS #622 -- end
    }

    var

}