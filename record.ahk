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
; 執行bat檔(附錄二) 開始錄製影片 #請自行修改對應位置
run C:\Users\test\Desktop\record.bat
; 間隔60000毫秒(60秒)後執行下一個指令
sleep 60000
; 隱藏地牛Wake Up!視窗 避免重複錄製
WinHide ahk_exe OXWU.exe
; 間隔600000毫秒(10分鐘)後執行下一個指令
sleep 600000
; 關閉錄製軟體 停止錄製影片 重複6次(錄一個就需關一次)
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