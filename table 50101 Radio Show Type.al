/// <summary>
/// Table Radio Show Type (ID 50101).
/// </summary>
table 50101 "Radio Show Type"
{
    Caption = 'Radio Show Type';
    LookupPageId = "Radio Show Type";
    DrillDownPageId = "Radio Show Type";

    fields
    {
        field(1; "Code"; Code[20]) { }
        field(10; Description; Text[50]) { }
    }

}
