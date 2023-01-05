/*-------------------------------------------------DOCUMENTATION-------------------------------------------------------------------
On insert of a customer, a customer dimension is to be created. 
Depending on the company type, an operator dimension may be created as well.
---------------------------------------------------------------------------------------------------------------------------------*/
tableextension 50001 CustomerExt extends Customer
{
    fields
    {
        field(50000; "Corporate Name"; Text[150])
        {
            Caption = 'Corporate Name';
        }
        field(50001; "Separate Halls Inv."; Boolean)
        {
            Caption = 'Separate Halls Invoice';
        }
        field(50002; "Customer Since"; Date)
        {
            Caption = 'Customer Since';
        }
        field(50003; "No. 2"; Code[20])
        { }
        field(50004; "Payment Bank Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Bank Accounts"."Bank Code";
        }

        modify(Name)
        {
            trigger OnAfterValidate()
            begin
                FADimMgt.AddDimensions(Rec);
            end;
        }
    }

    keys
    {
        key(Key1; "Corporate Name")
        {

        }
    }

    var
        FADimMgt: Codeunit FixedAssetDimMgt;

    trigger OnRename()
    begin
        FADimMgt.RenameCustDim(xRec, Rec);
    end;
}