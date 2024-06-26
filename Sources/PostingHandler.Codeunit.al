codeunit 50101 "Posting Handler TUL"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Check Line", OnBeforeRunCheck, '', false, false)]

    local procedure CheckOneYearOldPostingDate(var GenJournalLine: Record "Gen. Journal Line")
    var
        TooOldErr: Label 'Posting Date is older than year';
    begin
        if CalcDate('<1Y>', GenJournalLine."Posting Date") < Today then
            Error(TooOldErr);
    end;
}