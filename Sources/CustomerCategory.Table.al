
table 50100 "Customer Category TUL"
{
    Caption = 'Customer Category', Comment = 'CSY="Kategorie zákazníka"';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code', Comment = 'CSY="Kód"';
            NotBlank = true;

        }
        field(10; Description; Text[100])
        {
            Caption = 'Description', Comment = 'CSY="Popis"';

        }
        field(20; Risk; Enum "Risk TUL")
        {
            Caption = 'Risk', Comment = 'CSY="Riziko"';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Dropdpwn; Code, Description)
        {

        }
    }

}