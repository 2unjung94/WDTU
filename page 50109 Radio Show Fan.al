page 50109 "Radio Show Fan"
{
    ApplicationArea = Basic;
    Caption = 'Radio Show Fan';
    PageType = List;
    SourceTable = "Radio Show Fan";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic;
                }
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
