page 50107 "Listenership Entries"
{
    Caption = 'Listenership Entries';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Listenership Entry";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.") { ApplicationArea = Basic; }
                field("Ratings Source Entry No."; Rec."Ratings Source Entry No.") { ApplicationArea = Basic; }
                field(Date; Rec.Date) { ApplicationArea = Basic; }
                field("Start Time"; Rec."Start Time") { ApplicationArea = Basic; }
                field("End Time"; Rec."End Time") { ApplicationArea = Basic; }
                field("Radio Show No."; Rec."Radio Show No.") { ApplicationArea = Basic; }
                field("Listener Count"; Rec."Listener Count") { ApplicationArea = Basic; }
                field("Audience Share"; Rec."Audience Share") { ApplicationArea = Basic; }
                field("Age Demographic"; Rec."Age Demographic") { ApplicationArea = Basic; }
            }
        }
    }
}