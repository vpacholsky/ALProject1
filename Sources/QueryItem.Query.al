query 50102 "Query Item TUL"
{
    Caption = 'Query Item', Comment = 'CSY="Dotaz zboží"';
    QueryType = Normal;
    // OrderBy = ItemLedgerEntry.Quantity;

    elements
    {
        dataitem(Item; Item)
        {
            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(UnitOfMeasure; "Base Unit of Measure")
            {
            }

            dataitem(ItemLedgerEntry; "Item Ledger Entry")
            {
                DataItemTableFilter = Open = const(true);
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = InnerJoin;

                column(Quantity; Quantity)
                {
                    Method = Sum;
                }
            }
        }
    }
}
