#SingleInstance ignore

video_count := 0
FormatTime, start_time, %A_Now%, yyyyMMdd_HHmmss
global start_time
global video_count
streamlink("ebc.ts","www.youtube.com/watch?v=u5X_hiHtKkM","www.youtube.com/c/newsebc/live","720p")
streamlink("setn.ts","www.youtube.com/watch?v=4ZVUmEUFwaY","www.youtube.com/channel/UC2TuODJhC03pLgd6MpWP0iw","720p")
streamlink("tvbs.ts","www.youtube.com/watch?v=Hu1FkdAOws0","www.youtube.com/watch?v=Hu1FkdAOws0","720p")
streamlink("ctv.ts","www.youtube.com/watch?v=SlnpGiTU8Io","www.youtube.com/c/twctvnews/live","720p")
streamlink("cti.ts","www.youtube.com/watch?v=wUPPkSANpyo","www.youtube.com/channel/UC5l1Yto5oOIgRXlI4p4VKbw","720p")
streamlink("daai.ts","www.youtube.com/watch?v=ESKjSwcswBM","www.youtube.com/watch?v=ESKjSwcswBM","720p")
sleep, 660000
Loop, %video_count%
{
    WinClose, ahk_exe cmd.exe
}
if FileExist(A_ScriptDir . "\error.txt")
    FileAppend, 網址失效，若有備用網址，將使用備用網址錄製, %A_ScriptDir%\error.txt
Exit

streamlink(filename,url,alternate_url,quality)
{
    Run, %ComSpec% /k streamlink -o "%A_ScriptDir%\%start_time%_%filename%" %url% %quality% & echo %start_time%_%filename% >> "%A_ScriptDir%\error.txt" & streamlink -o "%A_ScriptDir%\%start_time%_%filename%" %alternate_url% %quality%
    video_count+=1
}