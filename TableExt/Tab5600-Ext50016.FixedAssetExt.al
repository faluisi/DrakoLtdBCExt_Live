tableextension 50016 FixedAssetExt extends "Fixed Asset"
{
    fields
    {
        modify("Serial No.")
        {
            trigger OnAfterValidate()
            begin
                FA.Reset();
                FA.SetFilter("Serial No.", Rec."Serial No.");
                if FA.FindFirst() then
                    error(Text000, FA."No.");
            end;
        }
    }

    var
        FA: Record "Fixed Asset";
        Text000: Label 'Fixed Asset %1 has the same Serial No.!';
}