table 50102 "Playlist Header"
{
    Caption = 'Playlist Header';

    fields
    {
        field(1; "No."; Code[20]) { }
        field(10; "Radio Show No."; Code[20])
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show";
            begin
                if RadioShow.Get("Radio Show No.") then begin
                    "PSAs Required" := RadioShow."PSA Required";
                    "Ads Required" := RadioShow."Ads Required";
                    "Call-In Required" := RadioShow."Call-In Required";
                    "Music Required" := RadioShow."Music Required";
                    "News Required" := RadioShow."News Required";
                    "Talk Required" := RadioShow."Talk Required";
                    "Rock Required" := RadioShow."Rock Required";
                end else begin
                    "PSAs Required" := false;
                    "Ads Required" := false;
                    "Call-In Required" := false;
                    "Music Required" := false;
                    "News Required" := false;
                    "Talk Required" := false;
                    "Rock Required" := false;
                end;

            end;

        }
        field(20; Description; Text[50]) { }
        field(30; "Broadcast Date"; Date) { }
        field(40; Duration; Duration) { }
        field(50; "Start Time"; Time)
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show";
            begin
                if RadioShow.Get("Radio Show No.") then
                    "End Time" := "Start Time" + RadioShow."Run Time";
            end;
        }
        field(60; "End Time"; Time) { }

        field(1010; "PSAs Required"; Boolean) { }
        field(1011; "PSA Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line" where
            ("Document No." = field("No."), Type = const(Item), "Data Format" = const(PSA)));
            Editable = false;
        }
        field(1020; "Ads Required"; Boolean) { }
        field(1021; "Ads Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line" where
            ("Document No." = field("No."), Type = const(Item), "Data Format" = const(Advertisement)));
            Editable = false;
        }
        field(1030; "Call-In Required"; Boolean) { }
        field(1040; "Music Required"; Boolean) { }
        field(1050; "News Required"; BOolean) { }
        field(1060; "Talk Required"; Boolean) { }
        field(1070; "Rock Required"; Boolean) { }


    }


    // report 50101 - sorting 경고로 인해 key 추가
    keys
    {
        key(sorting; "No.")
        {
            Clustered = true;
        }
    }

    procedure NWRequired(Category: Option ,CallIn,Music,News,Talk,Rock): Integer
    var
        PlaylistLine: Record "Playlist Line";
        RadioShow: Record "Radio Show";
        RadioShowType: Record "Radio Show Type";
        Cnt: Integer;
    begin
        PlaylistLine.Reset();
        PlaylistLine.SetRange("Document No.", "No.");
        PlaylistLine.SetRange(Type, PlaylistLine.Type::Show);
        if PlaylistLine.FindSet then
            repeat
                if RadioShow.Get(PlaylistLine."No.") and
                RadioShowType.Get(RadioShow."Radio Show Type") then begin
                    case Category of
                        Category::CallIn:
                            if RadioShowType.Code = 'CALL-IN' then
                                Cnt += 1;
                        Category::Music:
                            if RadioShowType.Code = 'MUSIC' then
                                Cnt += 1;
                        Category::News:
                            if RadioShowType.Code = 'NEWS' then
                                Cnt += 1;
                        Category::Talk:
                            if RadioShowType.Code = 'TALK' then
                                Cnt += 1;
                        Category::Rock:
                            if RadioShowType.Code = 'ROCK' then
                                Cnt += 1;

                    end;
                end;
            until PlaylistLine.Next = 0;
        exit(Cnt);
    end;

}