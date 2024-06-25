pageextension 50101 "Customer Card TUL" extends "Customer Card"
{
    layout
    {
        addafter("Customer Disc. Group")
        {
            field("Customer Category Code TUL"; Rec."Customer Category Code TUL")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Customer Category Code', Comment = 'CSY="Kód kategorie zakaznika"';
                ToolTip = 'Specifies category of Customer', Comment = 'CSY="Určuje kategorii zákazníka"';
                trigger OnValidate()
                begin
                    Rec.CalcFields("Risk TUL");
                end;
            }
            field("Risk TUL"; Rec."Risk TUL")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies risk level of Customer', Comment = 'CSY="Určuje úroveň rizika zákazníka"';
                DrillDown = false;
            }

        }
        modify("Last Date Modified")
        {
            Visible = false;

        }
        moveafter("Post Code"; City)
    }

}