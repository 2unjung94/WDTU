query 50100 "Lot Avail. by Bin"
{
    QueryType = Normal;

    elements
    {
        dataitem(Item_Ledger_Entry; "Item Ledger Entry")
        {
            column(Item_No_; "Item No.") { }
            column(Lot_No_; "Lot No.") { }
            dataitem(Warehouse_Entry; "Warehouse Entry")
            {
                // DataItemLink - 두 데이터 항목 간의 관계 조건을 설정(Join문에서 ON절)
                // SQLJoinType 생략시 INNER JOIN 방식으로 동작
                // Item_Ledger_Entry와 Warehose_Entry와의 링크 연결
                DataItemLink = "Location Code" = Item_Ledger_Entry."Location Code",
                       "Item No." = Item_Ledger_Entry."Item No.",
                       "Lot No." = Item_Ledger_Entry."Lot No.";
                column(Entry_No_; "Entry No.") { }
                column(Location_Code; "Location Code") { }
                column(Zone_Code; "Zone Code") { }
                column(Bin_Code; "Bin Code") { }
                column(Sum_Quantity; Quantity) { Method = Sum; }

                dataitem(Bin; Bin)
                {
                    // Warehose_Entry와 Bin과의 링크 연결
                    DataItemLink = Code = Warehouse_Entry."Bin Code";


                    dataitem(Bin_Type; "Bin Type")
                    {
                        // Bin과 Bin_Type과의 링크 연결
                        DataItemLink = Code = Bin.Code;
                        // SQL에서 조건문; Where Pick = 1; = 레코드 필터링 조건
                        DataItemTableFilter = Pick = const(true);
                    }
                }
            }
        }
    }


    trigger OnBeforeOpen()
    begin

    end;
}