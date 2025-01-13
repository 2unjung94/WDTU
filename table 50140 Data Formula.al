/// <summary>
/// Table Data Formula (ID 50140).
/// </summary>
table 50140 "Data Formula"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10]) { }
        field(10; "Reference for Date Calculation"; Date)
        {
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(20; "Date Formula to Test"; DateFormula)
        {
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(30; "Date Result"; Date) { }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    local procedure CalculateNewDate()
    var
        DateFormMgt: Codeunit "Date Formula Mgt";
    begin
        // "Date Result" := CalcDate("Date Formula to Test", "Reference for Date Calculation");
        "Date Result" := DateFormMgt.CalculateNewDate("Date Formula to Test", "Reference for Date Calculation");
    end;

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}