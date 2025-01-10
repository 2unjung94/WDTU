report 50102 "Fan Promotion List"
{
    Caption = 'Fan Promotion List';
    DefaultLayout = Word;
    WordLayout = 'FanPromotionList.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;

    dataset
    {
        dataitem(DataItemName; "Radio Show Fan")
        {
            column(Name; Name) { }
            column(Address; Address) { }
            column(Address_2; "Address 2") { }
            column(City; City) { }
            column(Post_Code; "Post Code") { }
            column(Country_Region_Code; "Country/Region Code") { }
            column(CountryName; CountryName) { }

            trigger OnAfterGetRecord()
            begin
                // 국가/지역 코드를 사용하여 국가 이름 찾기
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;

                // 팬의 나이 계산
                FanAge := Round(((WorkDate() - "Birth Date") / 365), 1.0, '<');

                // 프로모션 자료를 받을 팬 선택
                SelectThisFan := false;
                if Age12orLess and (FanAge <= 12) then
                    SelectThisFan := true;
                if Age13to18 and (FanAge > 12) and (FanAge < 19) then
                    SelectThisFan := true;
                if Age19to34 and (FanAge > 18) and (FanAge < 35) then
                    SelectThisFan := true;
                if Age35to50 and (FanAge > 34) and (FanAge < 51) then
                    SelectThisFan := true;
                if AgeOver50 and (FanAge > 50) then
                    SelectThisFan := true;
                if Male and (Gender = Gender::Male) then
                    SelectThisFan := true;
                if Female and (Gender = Gender::Female) then
                    SelectThisFan := true;

                // 이 팬이 선택되지 않은 경우, 보고서에서 이팬의 레코드 건너뛰기
                if not SelectThisFan then
                    CurrReport.Skip();

            end;
        }

    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(Age12orLess; Age12orLess) { ApplicationArea = Basic; Caption = 'Age 12 or less'; }
                    field(Age13to18; Age13to18) { ApplicationArea = Basic; Caption = 'Age 13 to 18'; }
                    field(Age19to34; Age19to34) { ApplicationArea = Basic; Caption = 'Age 19 to 34'; }
                    field(Age35to50; Age35to50) { ApplicationArea = Basic; Caption = 'Age 35 to 50'; }
                    field(AgeOver50; AgeOver50) { ApplicationArea = Basic; Caption = 'Age over 50'; }
                    field(Male; Male) { ApplicationArea = Basic; Caption = 'Male'; }
                    field(Female; Female) { ApplicationArea = Basic; Caption = 'Female'; }
                }
            }
        }
    }

    var
        CountryRegion: Record "Country/Region";   // 국가/지역 테이블 호출
        CountryName: Text;                        // 국가코드를 사용해서 검색한 국가이름 저장

        FanAge: Integer;                          // 생일을 사용해서 고객 나이 계산값 저장

        Age12orLess: Boolean;
        Age13to18: Boolean;
        Age19to34: Boolean;
        Age35to50: Boolean;
        AgeOver50: Boolean;                       // 옵션으로 지정한 고객의 타겟 해당 여부 저장
        Female: Boolean;
        Male: Boolean;
        SelectThisFan: Boolean;
}