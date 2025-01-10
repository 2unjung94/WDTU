page 50101 "Radio Show Card"
/// 필드 이름으로만 가져옴
/// radio show list와 같은 page라는 유형의 object 이므로 50101 번호를 사용함 
{
    // 프로퍼티 정의 구역 
    PageType = Card;
    SourceTable = "Radio Show";

    // 레이아웃 정의 구역 
    layout
    {
        area(Content)
        {
            group(General)  // group - 단위 레코드로 나옴
            {
                field("No."; Rec."No.") { Caption = 'Number'; ApplicationArea = Basic; Importance = Promoted; }
                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = Basic; Importance = Promoted; }
                field("Name"; Rec."Name") { ApplicationArea = Basic; Importance = Promoted; }
                field("Run Time"; Rec."Run Time") { ApplicationArea = Basic; }
                field("Host Code"; Rec."Host Code") { ApplicationArea = Basic; }
                field("Host Name"; Rec."Host Name") { ApplicationArea = Basic; }

            }
            group(Requirements)
            {
                field("PSA Required"; Rec."PSA Required") { ApplicationArea = Basic; }
                field("Ads Required"; Rec."Ads Required") { ApplicationArea = Basic; }
                field("Call-In Required"; Rec."Call-In Required") { ApplicationArea = Basic; }
                field("Music Required"; Rec."Music Required") { ApplicationArea = Basic; }
                field("News Required"; Rec."News Required") { ApplicationArea = Basic; }
                field("Talk Required"; Rec."Talk Required") { ApplicationArea = Basic; }
                field("Rock Required"; Rec."Rock Required") { ApplicationArea = Basic; }
            }
            group(Statistics)
            {
                field("Average Listeners"; Rec."Average Listeners") { ApplicationArea = Basic; }
                field("Audience Share"; Rec."Audience Share") { ApplicationArea = Basic; Importance = Promoted; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { ApplicationArea = Basic; }
                field("Royalty Cost"; Rec."Royalty Cost") { ApplicationArea = Basic; }
            }

        }
    }
    actions
    {
        area(Creation)
        {
            action(actiontext)
            {
                Caption = 'ㅎㅇㅎㅇ팝업';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('ㅎㅇㅎㅇ');
                end;
            }
            action(actiontext2)
            {
                Caption = 'ㅎㅇㅎㅇ2팝업';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('ㅎㅇㅎㅇ2');
                end;
            }
        }
    }
}