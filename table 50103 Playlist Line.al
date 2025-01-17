/// <summary>
/// Table Playlist Line (ID 50103).
/// </summary>
table 50103 "Playlist Line"
{
    Caption = 'Playlist Line';

    fields
    {
        field(1; "Document No."; Code[20]) { }
        field(2; "Line No."; Integer) { }
        field(10; "Type"; Option) { OptionMembers = ,Resource,Show,Item; }
        // Resource, Show, Item base application과 연결
        field(20; "No."; Code[20])
        {
            TableRelation = if (Type = const(Resource)) Resource."No."
            else if (Type = const(Show)) "Radio Show"."No."
            else if (Type = const(Item)) Item."No.";
        }
        field(30; "Data Format"; Option) { OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement; }
        field(40; Publisher; Code[30]) { }
        field(50; Description; Text[50]) { }
        field(60; Duration; Duration) { Editable = false; }
        field(70; "Start Time"; Time)
        {
            trigger OnValidate()
            begin
                if Duration <> 0 then
                    "End Time" := "Start Time" + Duration;
            end;
        }
        field(80; "End Time"; Time)
        {
            trigger OnValidate()
            begin
                if "Start Time" <> 0T then
                    Duration := "End Time" - "Start Time";
            end;
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}