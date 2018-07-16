@ECHO OFF
SET "url=https://raw.githubusercontent.com/chemars/TV_EEW_Record/master/record.ahk"
SET "filename=record_download.ahk"

PowerShell -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%~dp0%filename%');"
IF NOT EXIST "%~dp0%filename%" PowerShell -WindowStyle Hidden -Command "Invoke-WebRequest -OutFile '%~dp0%filename%' '%url%'"
IF EXIST "%~dp0%filename%" (
    START "" "%~dp0%filename%"
 ) ELSE ( 
    Echo ¤U¸ü¥¢±Ñ >> "%~dp0error.txt"
 )