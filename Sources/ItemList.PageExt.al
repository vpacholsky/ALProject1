pageextension 50102 "Item List TUL" extends "Item List"
{
    actions
    {
        addlast(Functions)
        {
            action(ExportToXMLTUL)
            {
                Caption = 'Export to XML', Comment = 'CSY="Export do XML"';
                ApplicationArea = Basic, Suite;
                Ellipsis = true;
                Image = XMLFile;
                RunObject = xmlport "Item to XML TUL";
                ToolTip = 'Export all items XML file.', Comment = 'CSY="Exportuje všechna zboží do XML souboru."';
            }
        }
    }
}
