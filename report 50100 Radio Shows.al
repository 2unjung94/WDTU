/// <summary>
/// Report Radio Shows (ID 50100).
/// </summary>
report 50100 "Radio Shows"
{
    ApplicationArea = Basic;
    Caption = 'Radio Shows';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'reports/RadioShows.docx';
    RDLCLayout = 'reports/RadioShows.rdlc';
    DefaultLayout = Word;
    dataset
    {
        dataitem(RadioShow; "Radio Show")
        {
            column(No; "No.")
            {
            }
            column(RadioShowType; "Radio Show Type")
            {
            }
            column(Name; Name)
            {
            }
            column(RunTime; "Run Time")
            {
            }
            column(HostCode; "Host Code")
            {
            }
            column(HostName; "Host Name")
            {
            }
            column(AverageListeners; "Average Listeners")
            {
            }
            column(AudienceShare; "Audience Share")
            {
            }
            column(AdvertisingRevenue; "Advertising Revenue")
            {
            }
            column(RoyaltyCost; "Royalty Cost")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
