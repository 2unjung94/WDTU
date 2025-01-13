/// <summary>
/// Page Radio Show List (ID 50100).
/// </summary>
page 50100 "Radio Show List"
/// 필드 이름으로만 가져옴
{
    Caption = 'Radio Shows';
    ApplicationArea = Basic;
    PageType = List;
    // UsageCategory = Lists; // 이걸 입력해야지 검색할 때 리스트에 나온다.
    SourceTable = "Radio Show";
    UsageCategory = Lists;
    CardPageId = "Radio Show Card";

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
                field("Average Listeners"; Rec."Average Listeners") { ApplicationArea = Basic; }
                field("Audience Share"; Rec."Audience Share") { ApplicationArea = Basic; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { ApplicationArea = Basic; }
                field("Royalty Cost"; Rec."Royalty Cost") { ApplicationArea = Basic; }
            }
            // 서브페이지? 예제
            // part(Fans2; "Radio Show Fan Factbox")
            // {
            //     Caption = '서브페이지 파트';
            //     ApplicationArea = Basic;
            //     //SubPageLink = "Radio Show No." = field("No.");
            // }
        }

        // factbox 예제
        area(FactBoxes)
        {
            part(Fans; "Radio Show Fan Factbox")
            {
                ApplicationArea = Basic;
                SubPageLink = "Radio Show No." = field("No.");
            }
        }
    }
}