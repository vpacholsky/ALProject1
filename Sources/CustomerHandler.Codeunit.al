codeunit 50100 "Customer Handler TUL"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, Name, false, false)]
    local procedure CheckNameLenghtOnAfterValidateCustomerName(var Rec: Record Customer)
    var
        NameShortMsg: Label 'Name too short', Comment = 'CSY="Název je příliš krátký"';
    begin
        if Rec.IsTemporary then
            exit;

        if StrLen(Rec.Name) < 5 then
            Message(NameShortMsg);
    end;
}