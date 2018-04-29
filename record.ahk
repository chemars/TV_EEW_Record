; 自動錄製電視台地震速報 v0.7
; 強制覆蓋舊程式碼
#SingleInstance force

Loop
{
; 當地牛Wake Up!視窗開啟就開始錄製影片流程
    WinWait, ahk_exe OXWU.exe
; 取得現在時間並調整格式(年月日_時分秒)
    FormatTime, start_time, %A_Now%, yyyyMMdd_HHmmss
; 使用Streamlink錄製影片
; 格式為 streamlink("檔名","網址","畫質")
; 檔名將自動加上時間 避免覆蓋已有檔案
; 請依需求修改
    streamlink("ebc.ts","www.youtube.com/watch?v=RkgHSqdMCCI","720p")
    streamlink("setn.ts","www.youtube.com/watch?v=4ZVUmEUFwaY","720p")
    streamlink("tvbs.ts","www.youtube.com/watch?v=Hu1FkdAOws0","720p")
    streamlink("ctv.ts","www.youtube.com/watch?v=0rhn5w9Vhu8","720p")
    streamlink("cti.ts","www.youtube.com/watch?v=wUPPkSANpyo","720p")
    streamlink("daai.ts","www.youtube.com/watch?v=ESKjSwcswBM","720p")
; 等待1000毫秒(1秒)
    sleep, 1000
; 將地牛Wake Up!視窗置於上層 避免其他視窗覆蓋
    WinActivate, ahk_exe OXWU.exe
; 等待60000毫秒(1分鐘)
    sleep, 60000
; 隱藏地牛Wake Up!視窗 避免重複錄製
    WinHide, ahk_exe OXWU.exe
; 等待600000毫秒(10分鐘)
    sleep, 600000
; 關閉錄製視窗 停止錄製影片 重複6次
; 請依錄製數量修改(錄一個就需關一次)
    Loop, 6
    {
        WinClose, ahk_exe cmd.exe
    }
}

streamlink(filename,url,quality)
{
    global start_time
    Run, %ComSpec% /k "streamlink -o "%start_time%_%filename%" %url% %quality%" & echo %start_time%_%filename% >> error.txt
}