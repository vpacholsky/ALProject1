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
                    Caption = 'Code', Comment = 'CSY="Kód"';
                    ToolTip = 'Specifies Code.', Comment = 'CSY="Určuje kód"';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description', Comment = 'CSY="Popis"';
                    ToolTip = 'Specifies Description.', Comment = 'CSY="Určuje popis"';
                }
                field(Risk; Rec.Risk)
                {
                    Caption = 'Risk', Comment = 'CSY="Riziko"';
                    ToolTip = 'Specifies level of risk.', Comment = 'CSY="Určuje úroveň rizika"';
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