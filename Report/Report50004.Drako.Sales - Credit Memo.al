report 50004 "Drako Sales - Credit Memo"
{
    DefaultLayout = RDLC;
    RDLCLayout = './RDLC/R50004 Drako SalesCreditMemo.rdl';
    Caption = 'Drako Sales - Credit Memo';
    Permissions = TableData "Sales Shipment Buffer" = rimd;

    dataset
    {
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Credit Memo';
            column(No_SalesCrMemoHeader; "No.")
            {
            }
            column(VATAmtLineVATCptn; VATAmtLineVATCptnLbl)
            {
            }
            column(VATAmtLineVATBaseCptn; VATAmtLineVATBaseCptnLbl)
            {
            }
            column(VATAmtLineVATAmtCptn; VATAmtLineVATAmtCptnLbl)
            {
            }
            column(VATAmtLineVATIdentifierCptn; VATAmtLineVATIdentifierCptnLbl)
            {
            }
            column(TotalCptn; TotalCptnLbl)
            {
            }
            column(SalesCrMemoLineDiscCaption; SalesCrMemoLineDiscCaptionLbl)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(DocCptnCopyTxt; StrSubstNo(DocumentCaption, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoFaxNo; CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Bill-to Customer No.")
                    {
                    }
                    //column(PostDate_SalesCrMemoHeader; Format("Sales Cr.Memo Header"."Posting Date", 0, 4))
                    column(PostDate_SalesCrMemoHeader; Format("Sales Cr.Memo Header"."Posting Date", 0, DateFormatString))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."VAT Registration No.")
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(AppliedToText; AppliedToText)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourRef_SalesCrMemoHeader; "Sales Cr.Memo Header"."Your Reference")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyCntry)
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    //column(DocDt_SalesCrMemoHeader; Format("Sales Cr.Memo Header"."Document Date", 0, 4))
                    column(DocDt_SalesCrMemoHeader; Format("Sales Cr.Memo Header"."Document Date", 0, DateFormatString))
                    {
                    }
                    column(PriceInclVAT_SalesCrMemoHeader; "Sales Cr.Memo Header"."Prices Including VAT")
                    {
                    }
                    column(ReturnOrderNoText; ReturnOrderNoText)
                    {
                    }
                    column(ReturnOrdNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Return Order No.")
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo; Format("Sales Cr.Memo Header"."Prices Including VAT"))
                    {
                    }
                    column(VATBaseDiscPrc_SalesCrMemoLine; "Sales Cr.Memo Header"."VAT Base Discount %")
                    {
                    }
                    column(CompanyInfoPhoneNoCptn; CompanyInfoPhoneNoCptnLbl)
                    {
                    }
                    column(CompanyInfoVATRegNoCptn; CompanyInfoVATRegNoCptnLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCptn; CompanyInfoGiroNoCptnLbl)
                    {
                    }
                    column(CompanyInfoBankNameCptn; CompanyInfoBankNameCptnLbl)
                    {
                    }
                    column(CompanyInfoBankAccNoCptn; CompanyInfoBankAccNoCptnLbl)
                    {
                    }
                    column(No1_SalesCrMemoHeaderCptn; No1_SalesCrMemoHeaderCptnLbl)
                    {
                    }
                    column(SalesCrMemoHeaderPostDtCptn; SalesCrMemoHeaderPostDtCptnLbl)
                    {
                    }
                    column(DocumentDate; DocumentDateLbl)
                    {
                    }
                    column(CompanyInfoHomePageCaption; CompanyInfoHomePageCaptionLbl)
                    {
                    }
                    column(CompanyINfoEmailCaption; CompanyINfoEmailCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesCrMemoHeaderCaption; "Sales Cr.Memo Header".FieldCaption("Bill-to Customer No."))
                    {
                    }
                    column(PriceInclVAT_SalesCrMemoHeaderCaption; "Sales Cr.Memo Header".FieldCaption("Prices Including VAT"))
                    {
                    }
                    //BFT
                    column(TINNo; CompanyInfo."TIN Number")
                    { }
                    column(RFCCaption; RFCCaption)
                    { }
                    column(PrintTIN; PRintTIN)
                    { }
                    column(SiteLabel; SiteLabel)
                    { }
                    column(SiteName; "Sales Cr.Memo Header".Site)
                    { }
                    column(AppliedToNo; "Sales Cr.Memo Header"."Applies-to Doc. No.")
                    { }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Sales Cr.Memo Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimensionLoop1Num; Number)
                        {
                        }
                        column(HeaderDimCptn; HeaderDimCptnLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DimSetEntry1.FindSet then
                                    CurrReport.Break;
                            end else
                                if not Continue then
                                    CurrReport.Break;

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until DimSetEntry1.Next = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break;
                        end;
                    }
                    dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Cr.Memo Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineAmt_SalesCrMemoLine; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesCrMemoLine; Description)
                        {
                        }
                        column(No_SalesCrMemoLine; "No.")
                        {
                        }
                        column(Qty_SalesCrMemoLine; Quantity)
                        {
                        }
                        column(UOM_SalesCrMemoLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesCrMemoLine; "Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(Disc_SalesCrMemoLine; "Line Discount %")
                        {
                        }
                        column(VATIdentif_SalesCrMemoLine; "VAT Identifier")
                        {
                        }
                        //column(PostedReceiptDate; Format("Shipment Date"))
                        column(PostedReceiptDate; Format("Shipment Date", 0, DateFormatString))
                        {
                        }
                        column(Type_SalesCrMemoLine; Format(Type))
                        {
                        }
                        column(NNCTotalLineAmt; NNC_TotalLineAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmtInclVat; NNC_TotalAmountInclVat)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalInvDiscAmt_SalesCrMemoLine; NNC_TotalInvDiscAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmt; NNC_TotalAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmt_SalesCrMemoLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(Amt_SalesCrMemoLine; Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText; 'TOTAL')
                        {
                        }
                        column(TotalInclVATText; 'TOTAL')
                        {
                        }
                        column(VATAmtLineVATAmtTxt; 'VAT @ ')
                        {
                        }
                        column(LineAmtInvDiscAmt_SalesCrMemoLine; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineNo_SalesCrMemoLine; "Line No.")
                        {
                        }
                        column(UnitPriceCptn; UnitPriceCptnLbl)
                        {
                        }
                        column(AmountCptn; AmountCptnLbl)
                        {
                        }
                        column(PostedReceiptDateCptn; PostedReceiptDateCptnLbl)
                        {
                        }
                        column(InvDiscAmt_SalesCrMemoLineCptn; InvDiscAmt_SalesCrMemoLineCptnLbl)
                        {
                        }
                        column(SubtotalCptn; SubtotalCptnLbl)
                        {
                        }
                        column(LineAmtInvDiscAmt_SalesCrMemoLineCptn; LineAmtInvDiscAmt_SalesCrMemoLineCptnLbl)
                        {
                        }
                        column(Desc_SalesCrMemoLineCaption; FieldCaption(Description))
                        {
                        }
                        column(No_SalesCrMemoLineCaption; FieldCaption("No."))
                        {
                        }
                        column(Qty_SalesCrMemoLineCaption; FieldCaption(Quantity))
                        {
                        }
                        column(UOM_SalesCrMemoLineCaption; FieldCaption("Unit of Measure"))
                        {
                        }
                        column(VATIdentif_SalesCrMemoLineCaption; FieldCaption("VAT Identifier"))
                        {
                        }
                        column(Curr1; Curr1)
                        { }
                        column(Curr2; Curr2)
                        { }
                        column(Curr1Cptn; Curr1Cptn)
                        { }
                        column(Curr2Cptn; Curr2Cptn)
                        { }
                        column(exchRate; exchRate)
                        { }

                        column(NNC_TotalLineAmountC1; NNC_TotalLineAmountC1)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalAmountInclVatC1; NNC_TotalAmountInclVatC1)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalInvDiscAmountC1; NNC_TotalInvDiscAmountC1)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalAmountC1; NNC_TotalAmountC1)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalLineAmountC2; NNC_TotalLineAmountC2)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalAmountInclVatC2; NNC_TotalAmountInclVatC2)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalInvDiscAmountC2; NNC_TotalInvDiscAmountC2)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(NNC_TotalAmountC2; NNC_TotalAmountC2)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(TotalPreVATEUR; TotalPreVATEUR)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(TotalVATEUR; TotalVATEUR)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }
                        column(TotalEUR; TotalEUR)
                        {
                            AutoFormatExpression = 'USD';
                            AutoFormatType = 1;
                        }

                        column(Period_Start; "Period Start")
                        {
                        }
                        column(Period_End; "Period End")
                        {
                        }
                        column(PeriodStartLbl; "PeriodStartLbl")
                        {
                        }
                        column(PeriodEndLbl; "PeriodEndLbl")
                        {
                        }
                        column(SIL_VATP; "Sales Cr.Memo Line"."VAT %")
                        { }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_DimensionLoop2; DimText)
                            {
                            }
                            column(LineDimCptn; LineDimCptnLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then begin
                                    if not DimSetEntry2.Find('-') then
                                        CurrReport.Break;
                                end else
                                    if not Continue then
                                        CurrReport.Break;

                                Clear(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := StrSubstNo('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until DimSetEntry2.Next = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break;

                                DimSetEntry2.SetRange("Dimension Set ID", "Sales Cr.Memo Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            NNC_TotalLineAmount += "Line Amount";
                            NNC_TotalAmountInclVat += "Amount Including VAT";
                            NNC_TotalInvDiscAmount += "Inv. Discount Amount";
                            NNC_TotalAmount += Amount;

                            if (Type = Type::"G/L Account") and (not ShowInternalInfo) then
                                "No." := '';

                            VATAmountLine.Init;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            if "Allow Invoice Disc." then
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;

                            //BFT1.00
                            CalculateCurrencyTotals("Sales Cr.Memo Header", Curr1, Curr2);

                            //BFT
                            if ("Sales Cr.Memo Line"."VAT %" = 0) then
                                VATLinePrint := '-'
                            else
                                VATLinePrint := StrSubstNo('%1%', "Sales Cr.Memo Line"."VAT %");
                            //BFT
                        end;

                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DeleteAll;
                            MoreLines := Find('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                                MoreLines := Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break;
                            SetRange("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvoiceDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmtSpecificationCptn; VATAmtSpecificationCptnLbl)
                        {
                        }
                        column(VATAmtLineInvDiscBaseAmtCptn; VATAmtLineInvDiscBaseAmtCptnLbl)
                        {
                        }
                        column(VATAmtLineLineAmtCptn; VATAmtLineLineAmtCptnLbl)
                        {
                        }
                        column(VATAmtLineInvoiceDiscAmtCptn; VATAmtLineInvoiceDiscAmtCptnLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SetRange(Number, 1, VATAmountLine.Count);
                        end;
                    }
                    dataitem(VATClauseEntryCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption; VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption; VATAmtLineVATIdentifierCptnLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption; VATAmtLineVATAmtCptnLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            if not VATClause.Get(VATAmountLine."VAT Clause Code") then
                                CurrReport.Skip;
                            VATClause.TranslateDescription("Sales Cr.Memo Header"."Language Code");
                        end;

                        trigger OnPreDataItem()
                        begin
                            Clear(VATClause);
                            SetRange(Number, 1, VATAmountLine.Count);
                        end;
                    }
                    dataitem(VATCounterLCY; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercent; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATCounterLCY; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               ("Sales Cr.Memo Header"."Currency Code" = '')
                            then
                                CurrReport.Break;

                            SetRange(Number, 1, VATAmountLine.Count);
                            Clear(VALVATBaseLCY);
                            Clear(VALVATAmountLCY);

                            if GLSetup."LCY Code" = '' then
                                VALSpecLCYHeader := Text008 + Text009
                            else
                                VALSpecLCYHeader := Text008 + Format(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code", 1);
                            CalculatedExchRate := Round(1 / "Sales Cr.Memo Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := StrSubstNo(Text010, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCptn; ShiptoAddressCptnLbl)
                        {
                        }
                        column(SelltoCustNo_SalesCrMemoHeaderCaption; "Sales Cr.Memo Header".FieldCaption("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if not ShowShippingAddr then
                                CurrReport.Break;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := FormatDocument.GetCOPYText;
                        OutputNo += 1;
                    end;

                    NNC_TotalLineAmount := 0;
                    NNC_TotalAmountInclVat := 0;
                    NNC_TotalInvDiscAmount := 0;
                    NNC_TotalAmount := 0;
                    ResetLCYValues();
                end;

                trigger OnPostDataItem()
                begin
                    if not IsReportInPreviewMode then
                        CODEUNIT.Run(CODEUNIT::"Sales Cr. Memo-Printed", "Sales Cr.Memo Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");

                FormatAddressFields("Sales Cr.Memo Header");
                FormatDocumentFields("Sales Cr.Memo Header");

                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");
                SetReportCurrencies(Curr1, Curr2, "Sales Cr.Memo Header");
                OnAfterGetRecordSalesCrMemoHeader("Sales Cr.Memo Header");

                //BFT
                g_Customer.SetFilter(g_Customer."No.", "Sales Cr.Memo Header"."Bill-to Customer No.");
                g_Customer.FindFirst;
                CustRegion := g_Customer."Country/Region Code";
                PrintTIN := false;
                if (CustRegion = 'MX') then begin
                    RFCCaption := 'RFC No.';
                    DateFormatString := '<Day,2>/<Month,2>/<Year4>';
                end
                else
                    if (CustRegion = 'PH') then begin
                        RFCCaption := 'TIN No.';
                        PrintTIN := true;
                        DateFormatString := '<Month,2>/<Day,2>/<Year4>';

                    end;

                //BFT
                if ("Sales Cr.Memo Line"."VAT %" = 0) then
                    VATLinePrint := '-'
                else
                    VATLinePrint := StrSubstNo('%1%', "Sales Cr.Memo Line"."VAT %");
                //BFT

            end;

            trigger OnPostDataItem()
            begin
                OnAfterPostDataItem("Sales Cr.Memo Header");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage()
        begin
            LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.Get;
        CompanyInfo.Get;
        SalesSetup.Get;
        FormatDocument.SetLogoPosition(SalesSetup."Logo Position on Documents", CompanyInfo1, CompanyInfo2, CompanyInfo3);

        OnAfterInitReport;
    end;

    trigger OnPostReport()
    begin
        if LogInteraction and not IsReportInPreviewMode then
            if "Sales Cr.Memo Header".FindSet then
                repeat
                    if "Sales Cr.Memo Header"."Bill-to Contact No." <> '' then
                        SegManagement.LogDocument(
                          6, "Sales Cr.Memo Header"."No.", 0, 0, DATABASE::Contact, "Sales Cr.Memo Header"."Bill-to Contact No.",
                          "Sales Cr.Memo Header"."Salesperson Code", "Sales Cr.Memo Header"."Campaign No.",
                          "Sales Cr.Memo Header"."Posting Description", '')
                    else
                        SegManagement.LogDocument(
                          6, "Sales Cr.Memo Header"."No.", 0, 0, DATABASE::Customer, "Sales Cr.Memo Header"."Sell-to Customer No.",
                          "Sales Cr.Memo Header"."Salesperson Code", "Sales Cr.Memo Header"."Campaign No.",
                          "Sales Cr.Memo Header"."Posting Description", '');
                until "Sales Cr.Memo Header".Next = 0;
    end;

    trigger OnPreReport()
    begin
        if not CurrReport.UseRequestPage then
            InitLogInteraction;
    end;

    var
        Text003: Label '(Applies to %1 %2)';
        Text005: Label 'Sales - Credit Memo %1', Comment = '%1 = Document No.';
        PageCaptionCap: Label 'Page %1 of %2';
        GLSetup: Record "General Ledger Setup";
        RespCenter: Record "Responsibility Center";
        SalesSetup: Record "Sales & Receivables Setup";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        VATAmountLine: Record "VAT Amount Line" temporary;
        VATClause: Record "VAT Clause";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        CurrExchRate: Record "Currency Exchange Rate";
        Language: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        CustAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        ReturnOrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        AppliedToText: Text;
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        Text008: Label 'VAT Amount Specification in ';
        Text009: Label 'Local Currency';
        Text010: Label 'Exchange rate: %1/%2';
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        CalculatedExchRate: Decimal;
        Text011: Label 'Sales - Prepmt. Credit Memo %1';
        OutputNo: Integer;
        NNC_TotalLineAmount: Decimal;
        NNC_TotalAmountInclVat: Decimal;
        NNC_TotalInvDiscAmount: Decimal;
        NNC_TotalAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        CompanyInfoPhoneNoCptnLbl: Label 'Phone No.';
        CompanyInfoVATRegNoCptnLbl: Label 'VAT Reg. No.';
        CompanyInfoGiroNoCptnLbl: Label 'Giro No.';
        CompanyInfoBankNameCptnLbl: Label 'Bank';
        CompanyInfoBankAccNoCptnLbl: Label 'Account No.';
        No1_SalesCrMemoHeaderCptnLbl: Label 'Credit Memo No.';
        SalesCrMemoHeaderPostDtCptnLbl: Label 'Posting Date';
        DocumentDateLbl: Label 'Document Date';
        CompanyInfoHomePageCaptionLbl: Label 'Home Page';
        CompanyINfoEmailCaptionLbl: Label 'Email';
        HeaderDimCptnLbl: Label 'Header Dimensions';
        UnitPriceCptnLbl: Label 'Unit Price';
        AmountCptnLbl: Label 'Amount';
        PostedReceiptDateCptnLbl: Label 'Posted Return Receipt Date';
        InvDiscAmt_SalesCrMemoLineCptnLbl: Label 'Invoice Discount Amount';
        SubtotalCptnLbl: Label 'SUBTOTAL';
        LineAmtInvDiscAmt_SalesCrMemoLineCptnLbl: Label 'Payment Discount on VAT';
        VATClausesCap: Label 'VAT Clause';
        LineDimCptnLbl: Label 'Line Dimensions';
        VATAmtSpecificationCptnLbl: Label 'VAT Amount Specification';
        VATAmtLineInvDiscBaseAmtCptnLbl: Label 'Invoice Discount Base Amount';
        VATAmtLineLineAmtCptnLbl: Label 'Line Amount';
        VATAmtLineInvoiceDiscAmtCptnLbl: Label 'Invoice Discount Amount';
        ShiptoAddressCptnLbl: Label 'Ship-to Address';
        VATAmtLineVATCptnLbl: Label 'VAT %';
        VATAmtLineVATBaseCptnLbl: Label 'VAT Base';
        VATAmtLineVATAmtCptnLbl: Label 'VAT Amount';
        VATAmtLineVATIdentifierCptnLbl: Label 'VAT Identifier';
        TotalCptnLbl: Label 'Total';
        SalesCrMemoLineDiscCaptionLbl: Label 'Discount %';
        //BFT
        g_Customer: Record Customer;
        PrintTIN: Boolean;
        RFCCaption: Text[10];
        CustRegion: Code[10];
        DateFormatString: Text[50];
        CompanyCntry: Text[50];
        SiteLabel: Label 'Site';
        PeriodStartLbl: Label 'Period Start';
        PeriodEndLbl: Label 'Period End';
        Curr1: Code[10];
        Curr2: Code[10];
        ARC: Code[10];
        Curr1Cptn: Text[10];
        Curr2Cptn: Text[10];
        TotalPreVATEUR: Decimal;
        TotalVATEUR: Decimal;
        TotalEUR: Decimal;
        NNC_TotalLineAmountC1: Decimal;
        NNC_TotalAmountInclVatC1: Decimal;
        NNC_TotalInvDiscAmountC1: Decimal;
        NNC_TotalAmountC1: Decimal;
        NNC_TotalLineAmountC2: Decimal;
        NNC_TotalAmountInclVatC2: Decimal;
        NNC_TotalInvDiscAmountC2: Decimal;
        NNC_TotalAmountC2: Decimal;
        exchRate: Decimal;
        VATLinePrint: Text[10];



    local procedure SetReportCurrencies(var Currency1: Code[10]; var Currency2: Code[10]; SCMH: Record "Sales Cr.Memo Header")
    var
        l_GLSetup: record "General Ledger Setup";
    begin
        Clear(Currency1);
        Clear(Currency2);
        GLSetup.get();
        /*if InvoiceHasVAT(SIH) then begin                    //if VAT is present, values to be shown are in LCY & EUR
            Currency1 := GLSetup."LCY Code";
            Currency2 := GLSetup."Additional Reporting Currency"; //Additional reporting currency = EUR
            Curr1Cptn := GLSetup."LCY Code";
            Curr2Cptn := GLSetup."Additional Reporting Currency";
        end
        else*/
        if ((SCMH."Currency Code" <> '') AND (SCMH."Currency Code" <> GLSetup."LCY Code")) then  //if not in LCY, values should be shown in FCY & LCY
        begin
            Currency1 := SCMH."Currency Code";
            Currency2 := GLSetup."LCY Code";
            Curr1Cptn := SCMH."Currency Code";
            Curr2Cptn := GLSetup."LCY Code";
        end
        else begin              //if in LCY, values should be shown in LCY;
            Currency1 := GLSetup."LCY Code";
            Currency2 := '';
            Curr1Cptn := GLSetup."LCY Code";
            Curr2Cptn := '';
        end;
    end;
    //end;

    //BFT-001 -- begin
    local procedure CalculateCurrencyTotals(var SCMHeader: record "Sales Cr.Memo Header"; Currency1: Code[10]; Currency2: Code[10])
    var
        GLSetup: Record "General Ledger Setup";
    begin
        GLSetup.get();
        if ((Currency1 = GLSetup."LCY Code") AND (Currency2 = '')) then begin
            //calculate LCY only
            CalcLCY();

        end
        else
            if ((Currency1 = GLSetup."LCY Code") AND (Currency2 = GLSetup."Additional Reporting Currency")) then begin
                //calculate LCY & EUR
                ARC := GLSetup."Additional Reporting Currency";
                CalcLCYARC(SCMHeader."Posting Date", ARC);
            end
            else
                if ((Currency1 <> GLSetup."LCY Code") AND (Currency2 = GLSetup."LCY Code")) then begin
                    //calculate FCY & LCY
                    CalcFCYLCY(SCMHeader);
                end;
        CalcVATEUR(SCMHeader."Posting Date");
    end;

    local procedure CalcLCY()
    begin
        NNC_TotalLineAmountC1 := NNC_TotalLineAmount;
        NNC_TotalAmountInclVatC1 := NNC_TotalAmountInclVat;
        NNC_TotalInvDiscAmountC1 := NNC_TotalInvDiscAmount;
        NNC_TotalAmountC1 := NNC_TotalAmount;

        NNC_TotalLineAmountC2 := 0;
        NNC_TotalAmountInclVatC2 := 0;
        NNC_TotalInvDiscAmountC2 := 0;
        NNC_TotalAmountC2 := 0;
    end;

    local procedure CalcLCYARC(PostingDate: Date; ARC: Code[10])
    var
        exchRate: Decimal;
        CurrencyExchangeRate: Record "Currency Exchange Rate";
    begin

        //get exchange rate
        CurrencyExchangeRate.Reset();
        CurrencyExchangeRate.setfilter(CurrencyExchangeRate."Currency Code", ARC);
        CurrencyExchangeRate.SetFilter(CurrencyExchangeRate."Starting Date", '<=%1', PostingDate);
        if CurrencyExchangeRate.FindLast() then begin
            exchRate := CurrencyExchangeRate."Exchange Rate Amount";
        end;

        NNC_TotalLineAmountC1 := NNC_TotalLineAmount;
        NNC_TotalAmountInclVatC1 := NNC_TotalAmountInclVat;
        NNC_TotalInvDiscAmountC1 := NNC_TotalInvDiscAmount;
        NNC_TotalAmountC1 := NNC_TotalAmount;

        NNC_TotalLineAmountC2 := NNC_TotalLineAmount * exchRate;
        NNC_TotalAmountInclVatC2 := NNC_TotalAmountInclVat * exchRate;
        NNC_TotalInvDiscAmountC2 := NNC_TotalInvDiscAmount * exchRate;
        NNC_TotalAmountC2 := NNC_TotalAmount * exchRate;

    end;

    local procedure CalcVATEUR(PostingDate: Date)
    var
        exchrate: Decimal;
        CurrencyExchangeRate: Record "Currency Exchange Rate";
    begin
        //if (not HasVAT) then
        //VATText := 'No VAT is chargeable as the service is deemed to be provided outside Malta in terms of the Third Schedule, Part 2, Item 2(1) to the Value Added Tax Act.';
        //get exchange rate
        CurrencyExchangeRate.Reset();
        CurrencyExchangeRate.setfilter(CurrencyExchangeRate."Currency Code", 'EUR');
        CurrencyExchangeRate.SetFilter(CurrencyExchangeRate."Starting Date", '<=%1', PostingDate);
        if CurrencyExchangeRate.FindLast() then begin
            exchRate := CurrencyExchangeRate."Exchange Rate Amount";
        end;

        If (Curr1 = GLSetup."LCY Code") then begin
            TotalPreVATEUR := NNC_TotalLineAmountC1 * exchrate;
            //TotalVATEUR := TotalAmountVATC1 * exchrate;
            TotalEUR := NNC_TotalAmountInclVatC1 * exchrate;
        end
        else begin
            TotalPreVATEUR := NNC_TotalLineAmountC2 * exchrate;
            //TotalVATEUR := TotalAmountVATC1 * exchrate;
            TotalEUR := NNC_TotalAmountInclVatC2 * exchrate;
        end;
    end;

    local procedure CalcFCYLCY(SCMHeader: Record "Sales Cr.Memo Header")
    begin
        exchRate := SCMHeader."Currency Factor";
        NNC_TotalLineAmountC1 := NNC_TotalLineAmount;
        NNC_TotalAmountInclVatC1 := NNC_TotalAmountInclVat;
        NNC_TotalInvDiscAmountC1 := NNC_TotalInvDiscAmount;
        NNC_TotalAmountC1 := NNC_TotalAmount;

        NNC_TotalLineAmountC2 := NNC_TotalLineAmount / exchRate;
        NNC_TotalAmountInclVatC2 := NNC_TotalAmountInclVat / exchRate;
        NNC_TotalInvDiscAmountC2 := NNC_TotalInvDiscAmount / exchRate;
        NNC_TotalAmountC2 := NNC_TotalAmount / exchRate;

    end;

    local procedure ResetLCYValues()
    begin

        NNC_TotalLineAmountC1 := 0;
        NNC_TotalAmountInclVatC1 := 0;
        NNC_TotalInvDiscAmountC1 := 0;
        NNC_TotalAmountC1 := 0;

        NNC_TotalLineAmountC2 := 0;
        NNC_TotalAmountInclVatC2 := 0;
        NNC_TotalInvDiscAmountC2 := 0;
        NNC_TotalAmountC2 := 0;
    end;

    local procedure InvoiceHasVAT(VATSIH: Record "Sales Invoice Header"): Boolean
    begin
        VATSIH.CalcFields("Amount Including VAT");
        VATSIH.CalcFields(Amount);
        if VATSIH."Amount Including VAT" - VATSIH.Amount <> 0 then
            exit(true)
        else
            exit(false);
    end;

    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
    end;

    local procedure DocumentCaption(): Text[250]
    begin
        if "Sales Cr.Memo Header"."Prepayment Credit Memo" then
            exit(Text011);
        exit(Text005);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        exit(CurrReport.Preview or MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure FormatAddressFields(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    var
        Cnt: Record "Country/Region";
    begin
        FormatAddr.GetCompanyAddr(SalesCrMemoHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.SalesCrMemoBillTo(CustAddr, SalesCrMemoHeader);
        ShowShippingAddr := FormatAddr.SalesCrMemoShipTo(ShipToAddr, CustAddr, SalesCrMemoHeader);
        //BFT
        IF (Cnt.Get(CompanyInfo."Country/Region Code")) then
            CompanyCntry := Cnt.Name;
    end;

    local procedure FormatDocumentFields(SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
        with SalesCrMemoHeader do begin
            FormatDocument.SetTotalLabels("Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
            FormatDocument.SetSalesPerson(SalesPurchPerson, "Salesperson Code", SalesPersonText);

            ReturnOrderNoText := FormatDocument.SetText("Return Order No." <> '', FieldCaption("Return Order No."));
            ReferenceText := FormatDocument.SetText("Your Reference" <> '', FieldCaption("Your Reference"));
            VATNoText := FormatDocument.SetText("VAT Registration No." <> '', FieldCaption("VAT Registration No."));
            AppliedToText :=
              FormatDocument.SetText(
                "Applies-to Doc. No." <> '', Format(StrSubstNo(Text003, Format("Applies-to Doc. Type"), "Applies-to Doc. No.")));
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterGetRecordSalesCrMemoHeader(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnAfterInitReport()
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnAfterPostDataItem(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
    end;
}
