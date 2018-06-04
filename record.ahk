#SingleInstance ignore

video_count := 0
FormatTime, start_time, %A_Now%, yyyyMMdd_HHmmss
global start_time
global video_count
streamlink("ebc.ts","www.youtube.com/watch?v=QlShL5SPf0w","720p")
streamlink("setn.ts","www.youtube.com/watch?v=4ZVUmEUFwaY","720p")
streamlink("tvbs.ts","www.youtube.com/watch?v=Hu1FkdAOws0","720p")
streamlink("ctv.ts","www.youtube.com/watch?v=6ake466npaI","720p")
streamlink("cti.ts","www.youtube.com/watch?v=wUPPkSANpyo","720p")
streamlink("daai.ts","www.youtube.com/watch?v=ESKjSwcswBM","720p")
sleep, 660000
Loop, %video_count%
{
    WinClose, ahk_exe cmd.exe
}
Exit

streamlink(filename,url,quality)
{
    Run, %ComSpec% /k "streamlink -o "%A_ScriptDir%\%start_time%_%filename%" %url% %quality%" & echo %start_time%_%filename% >> error.txt
    video_count+=1
}