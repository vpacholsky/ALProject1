xmlport 50101 "Item to XML TUL"
{
    Caption = 'Item to XML', Comment = 'CSY="Zboží do XML"';
    Direction = Export;
    Format = Xml;
    XmlVersionNo = V10;

    schema
    {
        textelement(root)
        {
            tableelement(Item; Item)
            {
                fieldelement(No; Item."No.")
                {
                }
                fieldelement(Description; Item.Description)
                {
                }
                fieldelement(Inventory; Item.Inventory)
                {
                }
                fieldelement(CreatedAt; Item.SystemCreatedAt)
                {
                }
            }
        }
    }
}
