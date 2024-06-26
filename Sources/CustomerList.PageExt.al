pageextension 50103 "Customer List TUL" extends "Customer List"
{
    actions
    {
        addlast(processing)
        {
            action(ExportToCSVTUL)
            {
                Caption = 'Export to CSV', Comment = 'CSY="Export do CSV"';
                ApplicationArea = Basic, Suite;
                Ellipsis = true;
                Image = Export;
                RunObject = xmlport "Customer to CSV TUL";
                ToolTip = 'Export all cusrtomers CSV file.', Comment = 'CSY="Exportuje všechny zákayníkz do CSV souboru"';
            }
        }
    }


}