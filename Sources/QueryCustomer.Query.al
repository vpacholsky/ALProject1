query 50100 "Query Customer TUL"
{
    QueryType = Normal;
    //OrderBy = CustLedgEntry."Amount (LCY)";

    elements
    {
        dataitem(Customer; Customer)
        {
            //DataItemTableFilter = where(Blocked = false)
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(CountryCode; "Country/Region Code")
            {
            }
            dataitem(CustLedgEntry; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = Customer."No.";
                DataItemTableFilter = Open = const(true);
                SqlJoinType = InnerJoin;

                column(AmountLCY; "Amount (LCY)")
                {
                    Method = Sum;
                }
            }
        }

    }
}