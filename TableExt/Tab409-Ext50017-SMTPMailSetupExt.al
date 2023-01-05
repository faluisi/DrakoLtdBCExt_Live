/*
----------------------------------------------------------------------------------------------------------------------------------------------
Table extension was initially created to hold info. relating to Exchange Rate Maintenance (ERM)
DEVOPS #732
----------------------------------------------------------------------------------------------------------------------------------------------
*/
tableextension 50017 SMTPMailSetupExt extends "SMTP Mail Setup"
{
    fields
    {
        field(50000; ERM_From; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; ERM_To; Text[2048])
        {
            DataClassification = ToBeClassified;
        }
        field(50002; ERM_Subject; Text[2048])
        {
            DataClassification = ToBeClassified;
        }
    }

    var

}