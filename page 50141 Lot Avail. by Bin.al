page 50141 "Lot Avail. by Bin"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Warehouse Entry";
    SourceTableTemporary = true;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.") { ApplicationArea = Basic; }
                field("Item No."; Rec."Item No.") { ApplicationArea = Basic; }
                field("Location Code"; Rec."Location Code") { ApplicationArea = Basic; }
                field("Bin Code"; Rec."Bin Code") { ApplicationArea = Basic; }
                field("Serial No."; Rec."Serial No.") { ApplicationArea = Basic; }
                field(Quantity; Rec.Quantity) { ApplicationArea = Basic; }
            }
        }
    }

    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail. by Bin";
        i: Integer; // 명시적으로 초기화되지 않으면 기본값 0으로 초기화
    begin
        LotAvail.Open();
        while LotAvail.Read() do begin
            i += 1;
            // init이라는 프로퍼티/필드 접근 의미. 의미는 값or객체를 반환하거나 설정하기 위한 목적으로 사용
            // init()은 레코드 변수 값을 초기화하는 기능
            Rec.Init();
            Rec."Entry No." := i;   // := AL에서의 대입 연산자
            Rec."Item No." := LotAvail.Item_No_;
            Rec."Location Code" := LotAvail.Location_Code;
            Rec."Bin Code" := LotAvail.Bin_Code;
            Rec.Quantity := LotAvail.Sum_Quantity;
            Rec.Insert(); // DB에서 해당 "레코드"를 추가하는 동작
            // 즉 여기서는 join 결과를 객체로 만들어서 객체에 값을 넣어 화면에 보이도록 LotAvail 객체에 담는 기능을 하고 있음.
        end;
    end;
}