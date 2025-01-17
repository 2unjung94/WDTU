/// <summary>
/// Page Playlist Document (ID 50104).
/// </summary>
page 50104 "Playlist Document"
{
    PageType = Document;
    ApplicationArea = Basic;
    UsageCategory = Documents;
    SourceTable = "Playlist Header";

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field(Description; Rec.Description) { ApplicationArea = Basic; }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = Basic;

                    trigger OnValidate()
                    begin
                        CurrPage.Update;
                    end;
                }
                field("Start Time"; Rec."Start Time") { ApplicationArea = Basic; }
                field("End Time"; Rec."End Time") { ApplicationArea = Basic; }
                field("Broadcast Date"; Rec."Broadcast Date") { ApplicationArea = Basic; }
            }

            part(Lines; "Playlist Subpage")
            {
                SubPageLink = "Document No." = field("No.");
                SubPageView = sorting("Document No.", "Line No.");
            }
        }
        area(FactBoxes)
        {
            part(Factbox; "Playlist Factbox")
            {
                SubPageLink = "No." = field("No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}