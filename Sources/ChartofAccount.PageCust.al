pagecustomization "Chart of Account TUL" customizes "Chart of Accounts"
{
    layout
    {
        addafter("No.")
        {
            field(No2TUL; Rec."No. 2")
            {
                ApplicationArea = Basic, Suite;
            }
        }
        modify("Default Deferral Template Code")
        {
            Visible = false;
        }
        modify("Cost Type No.")
        {
            Visible = false;
        }
    }

}