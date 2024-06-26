codeunit 50102 "Install Application TUL"
{
    Subtype = Install;
    Access = Internal;

    trigger OnInstallAppPerCompany()
    var
        CustomerCategory: Record "Customer Category TUL";
    begin
        // runs every time when application is installed (in each company)
        if CustomerCategory.IsEmpty() then begin
            CustomerCategory.Init();
            CustomerCategory.Code := 'MALÝ';
            CustomerCategory.Description := 'Malý zákazník';
            CustomerCategory.Risk := CustomerCategory.Risk::Low;
            CustomerCategory.Insert(true);
        end;
    end;

    trigger OnInstallAppPerDatabase()
    begin
    end;
}