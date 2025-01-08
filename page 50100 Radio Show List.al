page 50100 "Radio Show List"
/// 필드 이름으로만 가져옴
{
    PageType = List;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            repeater(Group) // repeater - 반복문을 목록형태로 나와야 하니까!
            {
                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = Basic; }
                field("Name"; Rec."Name") { ApplicationArea = Basic; }
                field("Run Time"; Rec."Run Time") { ApplicationArea = Basic; }
                field("Host Code"; Rec."Host Code") { ApplicationArea = Basic; }
                field("Host Name"; Rec."Host Name") { ApplicationArea = Basic; }
                field("Audience Share"; Rec."Audience Share") { ApplicationArea = Basic; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { ApplicationArea = Basic; }
                field("Royalty Cost"; Rec."Royalty Cost") { ApplicationArea = Basic; }
            }
        }
    }
}