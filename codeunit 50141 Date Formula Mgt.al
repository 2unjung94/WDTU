codeunit 50141 "Date Formula Mgt"
{
    procedure CalculateNewDate(DateFormulaToTest: DateFormula; RefrenceForDateCalc: Date): Date
    begin
        exit(CalcDate(DateFormulaToTest, RefrenceForDateCalc));
    end;
}