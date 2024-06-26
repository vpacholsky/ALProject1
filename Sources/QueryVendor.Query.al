query 50101 "Query Vendor TUL"
{
    QueryType = Normal;
    Caption = 'Query Vendor', Comment = 'CSY="Query Vendor"';
    // OrderBy = Vendor."Amount (LCY)" Ascending;

    elements
    {
        dataitem(Vendor; Vendor)
        {
            column(No; "No.")
            {
            }
            column(Address; Address)
            {
            }
            column(City; City)
            {
            }
            column(Post_Code; "Post Code")
            {
            }
            dataitem(Vendor_Ledger_Entry; "Vendor Ledger Entry")
            {
                DataItemLink = "Vendor No." = Vendor."No.";
                DataItemTableFilter = Open = const(true);
                SqlJoinType = InnerJoin;

                column(Amount_LCY; "Amount (LCY)")
                {
                    Method = Sum;
                }
            }
        }
    }
}