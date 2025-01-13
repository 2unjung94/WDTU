/// <summary>
/// Page Radio Show Fan Factbox (ID 50110).
/// </summary>
page 50110 "Radio Show Fan Factbox"
{
    ApplicationArea = Basic;
    Caption = 'Radio Show Fan Factbox';
    PageType = ListPart;
    SourceTable = "Radio Show Fan";
    // CardPageId = "Radio Show Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = Basic;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field("E-mail"; Rec."E-mail")
                {
                    ApplicationArea = Basic;
                }
                field("Last Contacted"; Rec."Last Contacted")
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }
}
