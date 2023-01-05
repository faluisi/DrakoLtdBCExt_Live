pageextension 50029 CustomerListExt extends "Customer List"
{
    layout
    {
        addafter("Phone No.")
        {
            field("Payment Bank Code"; "Payment Bank Code")
            { }

        }
    }


    var
        myInt: Integer;
}