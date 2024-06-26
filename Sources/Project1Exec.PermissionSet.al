permissionset 50101 "Project1 Exec TUL"
{
    Caption = 'Project 1 Exec', Comment = 'CSY="Objekty projektu 1"', MaxLength = 30;
    Assignable = true;
    Permissions = table "Customer Category TUL" = X,
                page "Customer Categories TUL" = X,
                page "Project 1 Role Center TUL" = X,
                codeunit "Posting Handler TUL" = X,
                codeunit "Customer Handler TUL" = X,
                report "Customer Balance TUL" = X,
                report "Customer Open Balance TUL" = X,
                xmlport "Item to XML TUL" = X,
                xmlport "Customer to CSV TUL" = X,
                xmlport "Vendor to CSV TUL" = X,
                query "Query Vendor TUL" = X,
                query "Query Item TUL" = X;
}
