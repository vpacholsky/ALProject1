report 50101 "Customer Open Balance TUL"
{
    Caption = 'Customer Open Balance', Comment = 'CSY="Otevřené saldo zákazníka"';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic, Suite;
    DefaultRenderingLayout = BalanceToRDLC;

    dataset
    {
        dataitem(CompanyInformation; "Company Information")
        {
            DataItemTableView = sorting("Primary Key");
            column(CompanyName; Name)
            {

            }
            column(Picture; Picture)
            {

            }
        }

        dataitem(Customer; Customer)
        {
            DataItemTableView = where(Balance = filter(<> 0));
            RequestFilterFields = "No.", "Currency Code";
            column(No; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Balance_LCY; "Balance (LCY)")
            {

            }
            column(City; City)
            {

            }
            column(Address; Address)
            {

            }

            dataitem(CustLedgerEntry; "Cust. Ledger Entry")
            {
                DataItemTableView = sorting("Customer No.", "Posting Date", "Currency Code") where(Open = const(true));
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field("No.");

                column(Document_Type; "Document Type")
                {

                }
                column(Document_No; "Document No.")
                {

                }
                column(Posting_Date; "Posting Date")
                {

                }
                column(Remaining_Amount; "Remaining Amount")
                {

                }
                column(Currency_Code; "Currency Code")
                {

                }
                column(Remaining_Amt_LCY; "Remaining Amt. (LCY)")
                {

                }
                trigger OnPreDataItem()
                begin
                    if not PrintDetail then
                        CurrReport.Break();
                end;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options', Comment = 'CSY="Možnosti"';
                    field(PrintDetailTUL; PrintDetail)
                    {
                        Caption = 'PrintDetail', Comment = 'CSY="Tisknout detail"';
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Allows print customer ledger entries', Comment = 'CSY="Umožní tisk položek zákazníka"';

                    }
                }
            }
        }
    }

    rendering
    {
        layout(BalanceToRDLC)
        {
            Type = RDLC;
            LayoutFile = 'Sources\CustomerOpenBalance.rdl';
        }
        layout(BalanceToExcel)
        {
            Type = Excel;
            LayoutFile = 'Sources\CustomerOpenBalance.xlsx';
        }
    }

    var
        PrintDetail: Boolean;
}