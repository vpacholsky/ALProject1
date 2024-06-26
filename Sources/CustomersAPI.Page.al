page 50102 "Customers API TUL"
{
    // http://localhost:7048/bc240/api/tulip/sales/v2.0/customers
    // https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-custom-api

    PageType = API;
    Caption = 'Customers API';
    APIPublisher = 'tulip';
    APIGroup = 'sales';
    APIVersion = 'v2.0';
    EntityName = 'customer';
    EntitySetName = 'customers';
    SourceTable = Customer;
    DelayedInsert = true;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field(no; Rec."No.")
                {
                }
                field(name; Rec.Name)
                {
                }
            }
        }
    }
}
