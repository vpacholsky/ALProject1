tableextension 50100 "Customer TUL" extends Customer
{
    fields
    {
        field(50100; "Customer Category Code TUL"; Code[10])
        {
            Caption = 'Customer Category Code', Comment = 'CSY="Kód kategorie zákazníka"';
            DataClassification = CustomerContent;
            TableRelation = "Customer Category TUL".Code;

        }
        field(50101; "Risk TUL"; Enum "Risk TUL")
        {
            Caption = 'Risk', Comment = 'CSY="Riziko"';
            FieldClass = FlowField;
            CalcFormula = lookup("Customer Category TUL".Risk where(Code = field("Customer Category Code TUL")));
            Editable = false;

        }
    }
}
