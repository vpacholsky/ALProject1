xmlport 50102 "Vendor To CSV TUL"
{
    Caption = 'Vendor To CSV', Comment = 'CSY="Dodavatel do CSV"';
    Direction = Export;
    Format = VariableText;
    FieldSeparator = '<TAB>';
    FieldDelimiter = '<None>';
    TextEncoding = UTF8;

    schema
    {
        textelement(root)
        {
            tableelement(Vendor; Vendor)
            {
                fieldelement(No; Vendor."No.")
                {

                }
                fieldelement(Address; Vendor.Address)
                {

                }
                fieldelement(City; Vendor.City)
                {

                }
                fieldelement(Post_Code; Vendor."Post Code")
                {

                }
                fieldelement(Balance; Vendor.Balance)
                {

                }
                fieldelement(Balance_LCY; Vendor."Balance (LCY)")
                {

                }
                fieldelement(SystemCreatedAttul; Vendor.SystemCreatedAt)
                {

                }
            }
        }
    }
}
