report 50100 "Customer Balance TUL"
{
    Caption = 'Customer Balance', Comment = 'CSY="Saldo zákazníka"';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic, Suite;
    DefaultRenderingLayout = LayoutRDL;

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.", "Customer Posting Group", "Country/Region Code";
            column(CompanyName; CompanyProperty.DisplayName())
            {

            }
            column(ReportFilter; GetFilters())
            {

            }
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(City; "City")
            {
                IncludeCaption = true;
            }
            column(Balance__LCY_; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
        }
    }

    rendering
    {
        layout(LayoutRDL)
        {
            Type = RDLC;
            LayoutFile = 'Sources\CustomerBalance.rdl';
        }
        layout(LayoutWord)
        {
            Type = Word;
            LayoutFile = 'Sources\CustomerBalance.docx';
        }
        layout(LayoutExcel)
        {
            Type = Excel;
            LayoutFile = 'Sources\CustomerBalance.xlsx';
        }
    }

    labels
    {
        TotalLbl = 'Total', Comment = 'CSY="Celkem"';
        ReportTitleLbl = 'Customer Balance', Comment = 'CSY="Saldo zákazníka"';
        PageLbl = 'Page', Comment = 'CSY="Stránka"';

    }
}
