; 自動錄製電視台地震速報 v0.6 by marshc
; 強制覆蓋舊程式碼
#SingleInstance force

Loop
{
; 如果地牛Wake Up!視窗開啟就開始錄製影片流程
WinWait, ahk_exe OXWU.exe
; 取得現在時間並調整格式
FormatTime, start_time, %A_Now%, yyyyMMdd_HHmmss
; 使用streamlink錄製影片
; 檔名中的 %start_time% 為前面取得的時間 避免覆蓋已有檔案
; 引號內格式為 streamlink 儲存為檔案(-o) 檔名 網址 畫質(best 1080p 720p等) 
; 請依需求修改
Run %ComSpec% /k "streamlink -o %start_time%_ebc.ts www.youtube.com/watch?v=RkgHSqdMCCI 720p"
Run %ComSpec% /k "streamlink -o %start_time%_setn.ts www.youtube.com/watch?v=4ZVUmEUFwaY 720p"
Run %ComSpec% /k "streamlink -o %start_time%_tvbs.ts bcsecurelivehls-i.akamaihd.net/hls/live/510713/4862438529001/indexTVBS-N-HD-CH1-M.m3u8 best"
Run %ComSpec% /k "streamlink -o %start_time%_ctv.ts www.youtube.com/watch?v=nnj_19BiG2U 720p"
Run %ComSpec% /k "streamlink -o %start_time%_cti.ts www.youtube.com/watch?v=wUPPkSANpyo 720p"
Run %ComSpec% /k "streamlink -o %start_time%_daai.ts www.youtube.com/watch?v=ESKjSwcswBM 720p"
; 間隔60000毫秒(1分鐘)後執行下一個指令
sleep 60000
; 隱藏地牛Wake Up!視窗 避免重複錄製
WinHide, ahk_exe OXWU.exe
; 間隔600000毫秒(10分鐘)後執行下一個指令
sleep 600000
; 關閉錄製軟體 停止錄製影片 重複6次(錄一個就需關一次)
; 請依錄製數量修改
Loop, 6
 {
 WinClose, ahk_exe cmd.exe
 }
}