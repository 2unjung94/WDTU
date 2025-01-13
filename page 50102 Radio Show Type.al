/// <summary>
/// Page Radio Show Type (ID 50102).
/// </summary>
page 50102 "Radio Show Type"
{
    Caption = 'Radio Show Type';
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Radio Show Type";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code) { ApplicationArea = Basic; }
                field(Description; Rec.Description) { ApplicationArea = Basic; }
            }
        }
    }
}