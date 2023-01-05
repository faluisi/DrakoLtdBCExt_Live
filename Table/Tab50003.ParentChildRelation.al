/*-------------------------------------------------DOCUMENTATION-------------------------------------------------------------------
This table was initially intended to hold a parent - child relation between dimensions. This idea was eventually discarded 
and replaced by table T50006 but Table structure was not removed with the aim of being used in the future by FBM.
---------------------------------------------------------------------------------------------------------------------------------*/
table 50003 "Parent Child Relation"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Parent; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Dimension.Code;
        }

        field(2; Child; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Dimension.Code;
        }
    }

    keys
    {
        key(PK; Parent, Child)
        {
            Clustered = true;
        }
    }

    var

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}