/// <summary>
/// Codeunit Date Formula Mgt (ID 50141).
/// </summary>
codeunit 50141 "Date Formula Mgt"
{
    /// <summary>
    /// CalculateNewDate.
    /// </summary>
    /// <param name="DateFormulaToTest">DateFormula.</param>
    /// <param name="RefrenceForDateCalc">Date.</param>
    /// <returns>Return value of type Date.</returns>
    procedure CalculateNewDate(DateFormulaToTest: DateFormula; RefrenceForDateCalc: Date): Date
    begin
        exit(CalcDate(DateFormulaToTest, RefrenceForDateCalc));
    end;
}