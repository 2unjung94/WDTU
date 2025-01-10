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
                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field("Radio Show No."; Rec."Radio Show No.") { ApplicationArea = Basic; }
                field(Name; Rec.Name) { ApplicationArea = Basic; }
                field("Country/Region Code"; Rec."Country/Region Code") { ApplicationArea = Basic; }
                field("Post Code"; Rec."Post Code") { ApplicationArea = Basic; }
                field(Address; Rec.Address) { ApplicationArea = Basic; }
                field("Address 2"; Rec."Address 2") { ApplicationArea = Basic; }
                field(City; Rec.City) { ApplicationArea = Basic; }
                field(County; Rec.County) { ApplicationArea = Basic; }
                field(Gender; Rec.Gender) { ApplicationArea = Basic; }
                field("Birth Date"; Rec."Birth Date") { ApplicationArea = Basic; }
                field("E-mail"; Rec."E-mail") { ApplicationArea = Basic; }
                field("Last Contacted"; Rec."Last Contacted") { ApplicationArea = Basic; }

            }
        }
    }
}
