pageextension 50104 "Vendor List TUL" extends "Vendor List"
{
    actions
    {
        addlast(processing)
        {

            action(ExportToCSVTUL)
            {
                Caption = 'Export To CSV', Comment = 'CSY="Export do CSV"';
                ApplicationArea = Basic, Suite;
                Ellipsis = true;
                Image = Export;
                RunObject = xmlport "Vendor To CSV TUL";
                ToolTip = 'Export all vendors to CSV.', Comment = 'CSY="Exportujete všechny dodavatele do CSV."';
            }
        }
    }
}
