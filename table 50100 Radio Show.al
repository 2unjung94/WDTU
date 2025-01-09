table 50100 "Radio Show"
/// 코드번호와 이름은 고유해야함!
{
    Caption = 'Radio Show';

    fields
    {
        field(1; "No."; Code[20]) { }
        field(10; "Radio Show Type"; Code[10]) { TableRelation = "Radio Show Type"; }
        field(20; "Name"; Text[50]) { }
        field(40; "Run Time"; Duration) { }
        field(50; "Host Code"; Code[20]) { }
        field(60; "Host Name"; Text[50]) { }

        // 평균 청취자수
        field(100; "Average Listeners"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Listener Count"
          where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }

        // 공유회수
        field(110; "Audience Share"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Audience Share"
          where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        // 합계계산
        field(120; "Advertising Revenue"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount"
          where("Radio Show No." = field("No."), "Data Format" = filter(Advertisement)));
        }
        // where절에서의 ,는 and를 의미
        field(130; "Royalty Cost"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount"
          where("Radio Show No." = field("No."), "Data Format" = filter(Vinyl | CD | MP3)));
        }

        field(1000; "Frequency"; Option) { OptionMembers = Hourly,Daily,Weekly,Monthly; }
        field(1010; "PSA Planned Quantity"; Integer) { }
        field(1020; "Ads Planned Quentity"; Integer) { }
        field(1030; "News Required"; Boolean) { InitValue = true; }
        field(1040; "News Duration"; Duration) { }
        field(1050; "Sports Require"; Boolean) { InitValue = true; }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { InitValue = true; }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    // report 50101 - sorting 경고로 인해 key 추가
    keys
    {
        key(sorting; "Radio Show Type")
        {
            Clustered = true;
        }
    }
}