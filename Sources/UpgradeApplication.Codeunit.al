codeunit 50103 "Upgrade Application TUL"
{
    Subtype = Upgrade;
    Access = Internal;

    var
    // UpgradeTag: Codeunit "Upgrade Tag";

    trigger OnUpgradePerCompany()
    begin
        // runs only when application version is increased (in each company)
    end;

    trigger OnUpgradePerDatabase()
    begin
    end;
}
