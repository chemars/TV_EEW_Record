; 分號開頭為註解 不影響執行
; 強制覆蓋舊程式碼
#SingleInstance force
; 保持執行此程式
#Persistent
; 每3000毫秒(3秒)執行一次
SetTimer, Recordlive, 3000
return

Recordlive:
; 如果地牛Wake Up!視窗開啟就開始錄製影片流程
IfWinExist ahk_exe OXWU.exe
{
; 停止偵測地牛Wake Up!視窗 避免重複錄製
SetTimer, Recordlive, Off
; 取得現在時間並調整格式
FormatTime, start_time, %A_Now%, yyyyMMdd_HHmmss
; 使用streamlink來錄製影片
; 檔名中的 %start_time% 為前面取得的時間 避免覆蓋已有檔案
; 引號內格式為 streamlink 直播網址 畫質(best 1080p 720p等) 儲存為檔案 檔名
; 請依需求增加或修改
Run %ComSpec% /k "streamlink www.youtube.com/watch?v=Biolfit9JkE 720p -o %start_time%_ebc.ts"
Run %ComSpec% /k "streamlink www.youtube.com/watch?v=4ZVUmEUFwaY 720p -o %start_time%_setn.ts"
Run %ComSpec% /k "streamlink https://bcsecurelivehls-i.akamaihd.net/hls/live/510713/4862438529001/indexTVBS-N-HD-CH1-M.m3u8 best -o %start_time%_tvbs.ts"
Run %ComSpec% /k "streamlink www.youtube.com/watch?v=bSBctvoY8hE 720p -o %start_time%_ctv.ts"
Run %ComSpec% /k "streamlink www.youtube.com/watch?v=wUPPkSANpyo 720p -o %start_time%_cti.ts"
Run %ComSpec% /k "streamlink www.youtube.com/watch?v=ESKjSwcswBM 720p -o %start_time%_daai.ts"
; 間隔60000毫秒(1分鐘)後執行下一個指令
sleep 60000
; 隱藏地牛Wake Up!視窗 避免重複錄製
WinHide ahk_exe OXWU.exe
; 間隔600000毫秒(10分鐘)後執行下一個指令
sleep 600000
; 關閉錄製軟體 停止錄製影片 重複6次(錄一個就需關一次)
; 請依錄製數量修改
Loop, 6
 {
 Process, Close, streamlink.exe
 Process, Close, python.exe
 Process, Close, cmd.exe
 sleep 200
 }
; 重新開始偵測地牛Wake Up!視窗
SetTimer, Recordlive, on
}
return