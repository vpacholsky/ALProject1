reportextension 50102 "Customer Open Balance 3 TUL" extends "Customer Open Balance TUL"
{
    dataset
    {
        add(CustLedgerEntry)
        {
            column(GlobalDimension1CodeTUL; "Global Dimension 1 Code")
            {
            }
        }
    }
    rendering
    {
        layout(Layout3)
        {
            Type = RDLC;
            LayoutFile = 'Sources\CustomerOpenBalance3.rdl';
        }
    }
}