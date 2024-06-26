xmlport 50100 "Customer to CSV TUL"
{
    Caption = 'Customer to CSV', Comment = 'CSY="Zákazník do CSV"';
    Direction = Export;
    Format = VariableText;
    FieldSeparator = '<TAB>';
    FieldDelimiter = '<None>';
    TextEncoding = UTF8;

    schema
    {
        textelement(root)
        {
            tableelement(Customer; Customer)
            {
                fieldelement(No; Customer."No.")
                {
                }
                fieldelement(Name; Customer."Name")
                {
                }
                fieldelement(City; Customer."City")
                {
                }
                fieldelement(BalanceLCY; Customer."Balance (LCY)")
                {
                }
                fieldelement(CreatedAt; Customer.SystemCreatedAt)
                {
                }
            }

        }
    }


}