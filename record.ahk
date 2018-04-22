#SingleInstance force
#Persistent
SetTimer, Record, 3000
return

Record:
IfWinExist ahk_exe OXWU.exe
{
SetTimer, Record, Off
run C:\Users\Sam\Desktop\live.bat
sleep 60000
WinHide ahk_exe OXWU.exe
sleep 600000
Loop, 10
 {
 Process, Close, streamlink.exe
 Process, Close, python.exe
 Process, Close, cmd.exe
 sleep 500
 }
SetTimer, Record, on
}
return