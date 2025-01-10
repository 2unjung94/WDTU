page 50140 "Data Formula"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Data Formula";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Primary Key"; Rec."Primary Key") { ApplicationArea = All; }
                field("Reference for Date Calculation"; Rec."Reference for Date Calculation") { ApplicationArea = All; }
                field("Data Formula to Test"; Rec."Date Formula to Test") { ApplicationArea = All; }
                field("Date Result"; Rec."Date Result") { ApplicationArea = All; }
            }
        }

    }
}