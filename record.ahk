#SingleInstance force
#Persistent
SetTimer, Record, 3000
return

Record:
IfWinExist 地牛Wake
{
SetTimer, Record, Off
run C:\Users\Sam\Desktop\live.bat
sleep 60000
WinHide
sleep 600000
Loop, 10
 {
 Process, Close, livestreamer.exe
 Process, Close, cmd.exe
 sleep 500
 }
SetTimer, Record, on
}
return