/// <summary>
/// Page Publishers (ID 50108).
/// </summary>
page 50108 "Publishers"
{
    Caption = 'Publishers';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Publisher;

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