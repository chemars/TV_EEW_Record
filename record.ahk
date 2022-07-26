#SingleInstance ignore

video_count := 1
FormatTime, start_time, %A_Now%, yyyyMMdd_HHmmss
global start_time
global video_count
;streamlink("ebc.ts","www.youtube.com/watch?v=f8_QqSg0fWM","www.youtube.com/c/newsebc/live","720p")
;streamlink("set.ts","www.youtube.com/watch?v=FoBfXvlOR6I","www.youtube.com/channel/UC2TuODJhC03pLgd6MpWP0iw","720p")
streamlink("tvbs.ts","www.youtube.com/watch?v=eOTDfxJNLOc","www.youtube.com/channel/UC5nwNW4KdC0SzrhF9BXEYOQ","720p")
streamlink("ctv.ts","www.youtube.com/watch?v=TCnaIE_SAtM","www.youtube.com/c/twctvnews/live","720p")
streamlink("cti.ts","www.youtube.com/watch?v=_QbRXRnHMVY","www.youtube.com/channel/UC5l1Yto5oOIgRXlI4p4VKbw","720p")
streamlink("daai.ts","www.youtube.com/watch?v=oV_i3Hsl_zg","www.youtube.com/watch?v=oV_i3Hsl_zg","720p")
streamlink("ftv.ts","www.youtube.com/watch?v=yguQ1SzPM5U","www.youtube.com/channel/UClIfopQZlkkSpM1VgCFLRJA","720p")
streamlink("pts.ts","www.youtube.com/watch?v=4Uc00FPs27M","www.youtube.com/channel/UCXgIO9jJVsX5_2ideiSkfvA","720p")
streamlink("mnews.ts","www.youtube.com/watch?v=5n0y6b0Q25o","www.youtube.com/channel/UC4LjkybVKXCDlneVXlKAbmw","720p")
sleep, 660000
Loop, %video_count%
{
    WinClose, ahk_exe cmd.exe
}
if FileExist(A_ScriptDir . "\error.txt")
    FileAppend, 網址可能無效，若有備用網址，將使用備用網址錄製, %A_ScriptDir%\error.txt
Exit

streamlink(filename,url,alternate_url,quality)
{
    Run, %ComSpec% /k streamlink -o "%A_ScriptDir%\%start_time%_%filename%" "%url%" %quality% & TIMEOUT /T 1 /NOBREAK & echo %start_time%_%filename% >> "%A_ScriptDir%\error.txt" & streamlink -o "%A_ScriptDir%\2_%start_time%_%filename%" "%alternate_url%" %quality%
    video_count+=1
}