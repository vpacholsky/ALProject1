pageextension 50103 "Customer List TUL" extends "Customer List"
{
    actions
    {
        addlast(processing)
        {
            action(ExportToCSVTUL)
            {
                Caption = 'Export to CSV', comment = 'CSY="Export do CSV"';
                ApplicationArea = Basic, Suite;
                Ellipsis = true;
                Image = Export;
                RunObject = xmlport "CustomerToCSV TUL";
                ToolTip = 'Export all cusrtomers CSV file.', comment = 'CSY="Exportuje všechny zákayníkz do CSV souboru"';
            }
        }
    }


}