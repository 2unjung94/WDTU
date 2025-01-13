/// <summary>
/// Page Playlist Factbox (ID 50112).
/// </summary>
page 50112 "Playlist Factbox"
{
    PageType = CardPart;
    SourceTable = "Playlist Header";
    ApplicationArea = All;
    Caption = 'Playlist Factbox';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("PSAs Required"; Rec."PSAs Required") { ApplicationArea = All; }
                field("PSA Count"; Rec."PSA Count") { ApplicationArea = All; }
                field("Ads Required"; Rec."Ads Required") { ApplicationArea = All; }
                field("Ads Count"; Rec."Ads Count") { ApplicationArea = All; }
                field("Call-In Required"; Rec."Call-In Required") { ApplicationArea = All; }
                field("Music Required"; Rec."Music Required") { ApplicationArea = All; }
                field("News Required"; Rec."News Required") { ApplicationArea = All; }
                field("Talk Required"; Rec."Talk Required") { ApplicationArea = All; }
                field("Rock Required"; Rec."Rock Required") { ApplicationArea = All; }
                field(CallInCount; Rec.NWRequired(1)) { ApplicationArea = All; }
                field(MusicCount; Rec.NWRequired(2)) { ApplicationArea = All; }
                field(NewsCount; Rec.NWRequired(3)) { ApplicationArea = All; }
                field(TalkCount; Rec.NWRequired(4)) { ApplicationArea = All; }
                field(RockCount; Rec.NWRequired(5)) { ApplicationArea = All; }
            }
        }
    }
    // var
    //     NW: Codeunit "NW Required";
}