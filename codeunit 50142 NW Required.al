/// <summary>
/// Codeunit NW Required (ID 50142).
/// </summary>
codeunit 50142 "NW Required"
{
    /// <summary>
    /// NWRequired.
    /// </summary>
    /// <param name="Category">Option ,CallIn,Music,News,Talk,Rock.</param>
    /// <returns>Return value of type Integer.</returns>
    procedure NWRequired(Category: Option ,CallIn,Music,News,Talk,Rock): Integer
    var
        PlaylistLine: Record "Playlist Line";
        PlaylistHeader: Record "Playlist Header";
        RadioShow: Record "Radio Show";
        RadioShowType: Record "Radio Show Type";
        Cnt: Integer;
    begin
        PlaylistLine.Reset();
        PlaylistLine.SetRange("Document No.", PlaylistHeader."No.");
        PlaylistLine.SetRange(Type, PlaylistLine.Type::Show);
        if PlaylistLine.FindSet then
            repeat
                if RadioShow.Get(PlaylistLine."No.") and
                RadioShowType.Get(RadioShow."Radio Show Type") then begin
                    case Category of
                        Category::CallIn:
                            if RadioShowType.Code = 'CALL-IN' then
                                Cnt += 1;
                        Category::Music:
                            if RadioShowType.Code = 'MUSIC' then
                                Cnt += 1;
                        Category::News:
                            if RadioShowType.Code = 'NEWS' then
                                Cnt += 1;
                        Category::Talk:
                            if RadioShowType.Code = 'TALK' then
                                Cnt += 1;
                        Category::Rock:
                            if RadioShowType.Code = 'ROCK' then
                                Cnt += 1;

                    end;
                end;
            until PlaylistLine.Next = 0;
        exit(Cnt);
    end;
}