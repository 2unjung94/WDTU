report 50101 "Shows by type"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = './Shows by Type.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem("Radio Show Type"; "Radio Show Type")
        {
            column(Code_RadioShowType; Code) { IncludeCaption = true; }
            column(Description_RadioShowType; Description) { IncludeCaption = true; }

            dataitem("Radio.Show"; "Radio Show")
            {
                // Radio Show와 Radio Show Type을 연결
                DataItemLink = "Radio Show Type" = field(code);
                DataItemTableView = sorting("Radio Show Type"); // Radio Show Tpye 기준으로 Radio Show 항목을 오름차순 정렬
                PrintOnlyIfDetail = true; // 상세 데이터가 있을 경우에만 출력

                column(No_; "No.") { IncludeCaption = true; }
                column(Name; Name) { IncludeCaption = true; }
                column(Run_Time; "Run Time") { IncludeCaption = true; }

                dataitem("Playlist Header"; "Playlist Header")
                {
                    // Radio Show와 Playlist Header를 연결
                    DataItemLink = "Radio Show No." = field("No.");
                    DataItemTableView = sorting("No.");   // No.를 기준으로 Playlist Header 항목들을 오름차순 정렬

                    column(Broadcast_Date; "Broadcast Date") { IncludeCaption = true; }
                    column(Start_Time; "Start Time") { IncludeCaption = true; }
                }
            }
        }
    }
    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }
}