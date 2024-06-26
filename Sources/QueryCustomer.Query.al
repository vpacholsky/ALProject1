query 50100 "Query Customer TUL"
{

    QueryType = Normal;
    Caption = 'Query Customer', Comment = 'CSY="Query Customer"';
    OrderBy = ascending(AmountLCY);

    elements
    {
        dataitem(Customer; Customer)
        {
            DataItemTableFilter = Blocked = filter(false);
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