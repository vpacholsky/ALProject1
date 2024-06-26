page 50101 "Project 1 Role Center TUL"
{
    Caption = 'Project 1 Role Center';
    PageType = RoleCenter;
    ApplicationArea = Basic, Suite;

    layout
    {
        area(RoleCenter)
        {
            part(AccountantActivities; "Accountant Activities")
            {

            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(SalesOrder)
            {
                Caption = 'Sales Order';
                RunObject = page "Sales Order";
                ToolTip = 'Create new Sales Order.';
            }
        }
        area(Sections)
        {
            group(Warehouse)
            {
                Caption = 'Warehouse';
                action(Item)
                {
                    Caption = 'Item List';
                    RunObject = page "Item List";
                }
            }
        }
        area(Embedding)
        {
            action(Accounts)
            {
                Caption = 'Chart of Accounts';
                RunObject = page "Chart of Accounts";
            }
        }
    }
}