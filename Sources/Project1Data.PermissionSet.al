permissionset 50100 "Project1 Data TUL"
{
    Caption = 'Project 1 Data', Comment = 'CSY="Data projektu 1"', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata "Customer Category TUL" = RIMD;
}