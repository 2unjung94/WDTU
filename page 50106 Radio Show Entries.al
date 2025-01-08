page 50106 "Radio Show Entries"
{
    Caption = 'Radio Show Entries';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Radio Show Entry";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.") { ApplicationArea = Basic; }
                field("Radio Show No."; Rec."Radio Show No.") { ApplicationArea = Basic; }
                field(Type; Rec.Type) { ApplicationArea = Basic; }
                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field("Data Format"; Rec."Data Format") { ApplicationArea = Basic; }
                field(Description; Rec.Description) { ApplicationArea = Basic; }
                field(Date; Rec.Date) { ApplicationArea = Basic; }
                field(Time; Rec.Time) { ApplicationArea = Basic; }
                field(Duration; Rec.Duration) { ApplicationArea = Basic; }
                field("Fee Amount"; Rec."Fee Amount") { ApplicationArea = Basic; }
                field("ACSAP ID"; Rec."ACSAP ID") { ApplicationArea = Basic; }
                field("Publisher Code"; Rec."Publisher Code") { ApplicationArea = Basic; }
            }
        }
    }
}