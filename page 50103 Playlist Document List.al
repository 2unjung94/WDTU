page 50103 "Playlist Document List"
{
    Caption = 'Playlist Document List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Playlist Header";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field("Radio Show No."; Rec."Radio Show No.") { ApplicationArea = Basic; }
                field(Description; Rec.Description) { ApplicationArea = Basic; }
                field("Broadcase Date;"; Rec."Broadcast Date") { ApplicationArea = Basic; }
                field(Duration; Rec.Duration) { ApplicationArea = Basic; }
                field("Start Time"; Rec."Start Time") { ApplicationArea = Basic; }
                field("End Time"; Rec."End Time") { ApplicationArea = Basic; }
            }
        }
    }
}