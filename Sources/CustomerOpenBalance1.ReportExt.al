reportextension 50100 "Customer Open Balance 1 TUL" extends "Customer Open Balance TUL"
{
    dataset
    {
        add(Customer)
        {
            column(CreditLimitLCY; "Credit Limit (LCY)")
            {
            }
        }
    }

    rendering
    {
        layout(Layout1)
        {
            Type = RDLC;
            LayoutFile = 'Sources\CustomerOpenBalance1.rdl';
        }
    }
}
