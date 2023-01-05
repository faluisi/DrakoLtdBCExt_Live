/*-------------------------------------------------DOCUMENTATION-------------------------------------------------------------------
THIS IS A SINGLE INSTANCE CODEUNIT

This codeunit was built to be able to move values between one page and the other when viewing IC Fixed Assets.
---------------------------------------------------------------------------------------------------------------------------------*/
codeunit 50002 FAMHValues
{
    SingleInstance = true;

    trigger OnRun()
    begin

    end;

    var
        FixedAssetNo: Code[20];

    procedure SetFANo(FANo: Code[20])
    var
    begin
        FixedAssetNo := FANo;
    end;

    procedure GetFANo(): Code[20]
    begin
        exit(FixedAssetNo);
    end;

    procedure ClearValues()
    begin
        FixedAssetNo := '';
    end;
}