@ECHO OFF
SET "url=https://raw.githubusercontent.com/chemars/TV_EEW_Record/master/record.ahk"
SET "filename=record_download.ahk"
SET "old_file=old_file.ahk"

IF EXIST "%~dp0%filename%" COPY "%~dp0%filename%" "%~dp0%old_file%"
PowerShell -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%~dp0%filename%');"
IF NOT EXIST "%~dp0%filename%" PowerShell -WindowStyle Hidden -Command "Invoke-WebRequest -OutFile '%~dp0%filename%' '%url%'"
IF EXIST "%~dp0%filename%" (
    START "" "%~dp0%filename%"
    IF EXIST "%~dp0%old_file%" DEL "%~dp0%old_file%"
 ) ELSE ( 
    Echo 下載失敗，嘗試使用舊檔案 >> "%~dp0error.txt"
    IF EXIST "%~dp0%old_file%" START "" "%~dp0%old_file%"
 )