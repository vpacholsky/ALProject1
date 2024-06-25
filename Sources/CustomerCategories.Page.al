page 50100 "Customer Categories TUL"
{
    Caption = 'Customer Categories', Comment = 'CSY="Kategorie zákazníka"';
    PageType = List;
    ApplicationArea = Basic, Suite;
    UsageCategory = Lists;
    SourceTable = "Customer Category TUL";

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Code"; rec.Code)
                {
                    ToolTip = 'Specifies Code.', Comment = 'CSY="Určuje kód"';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies Description.', Comment = 'CSY="Určuje popis"';
                }
                field(Risk; Rec.Risk)
                {
                    ToolTip = 'Specifies level of risk.', Comment = 'CSY="Určuje úroveň rizika"';
                }
                field("Responsible Employee"; Rec."Responsible Employee")
                {
                    ToolTip = 'Specifies responsible employee.', Comment = 'CSY="Určuje odpovědnou osobu."';
                }
            }
        }
        area(Factboxes)
        {

            systempart(Notes; Notes)
            {

            }
        }

    }
}