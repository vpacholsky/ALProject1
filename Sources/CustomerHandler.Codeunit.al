codeunit 50100 "Customer Handler TUL"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, Name, false, false)]
    local procedure CheckNameLenghtOnAfterValidateCustomerName(var Rec: Record Customer)
    var
        NameShortMsg: Label 'Name too short', Comment = 'CSY="Název je příliš krátky."';
    begin
        if Rec.IsTemporary then
            exit;

        if Strlen(Rec.Name) < 5 then
            message(NameShortMsg);
    end;
}