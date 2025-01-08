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
                Caption = '1';
                field("No."; Rec."No.") { Caption = 'Number'; ApplicationArea = Basic; }
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
            // group(invoice)
            // {
            //     Caption = '2';
            //     field(tset; test)
            //     {
            //         ApplicationArea = All;
            //     }
            // }
        }
    }

    // 변수, 프로시저 설정 구역
    // var
    //     test: Text[10];
}