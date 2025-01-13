/// <summary>
/// Page Playlist Subpage (ID 50114).
/// </summary>
page 50114 "Playlist Subpage"
{
    Caption = 'Playlist Subpage';
    PageType = ListPart;
    SourceTable = "Playlist Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Type; Rec.Type) { ApplicationArea = All; }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        Res: Record Resource;
                        Item: Record Item;
                        RadioShow: Record "Radio Show";

                    begin
                        case Rec.Type of
                            Rec.Type::Resource:
                                begin
                                    Res.Get(Rec."No.");
                                    Rec.Description := Res.name;
                                end;
                            Rec.Type::Item:
                                begin
                                    Item.Get(Rec."No.");
                                    Rec.Description := Item.Description;
                                    Rec."Data Format" := Item."Data Format";
                                    Rec.Duration := Item.Duration;
                                end;
                            Rec.Type::Show:
                                begin
                                    RadioShow.Get(Rec."No.");
                                    Rec.Description := RadioShow.Name;
                                end;
                        end;
                    end;

                }
                field("Data Format"; Rec."Data Format") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(Duration; Rec.Duration) { ApplicationArea = All; }
                field("Start Time"; Rec."Start Time") { ApplicationArea = All; }
                field("End Time"; Rec."End Time") { ApplicationArea = All; }
            }
        }
    }
}