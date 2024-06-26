enum 50100 "Risk TUL"
{
    Caption = 'Risk', Comment = 'CSY="Riziko"';
    Extensible = true;

    value(0; " ")
    {
        Caption = ' ', Locked = true;
    }
    value(1; Low)
    {
        Caption = 'Low', Comment = 'CSY="Nízke"';
    }
    value(2; Medium)
    {
        Caption = 'Medium', Comment = 'CSY="Střední"';
    }
    value(3; High)
    {
        Caption = 'High', Comment = 'CSY="Vysoké"';
    }
}
