@ECHO OFF
SET "url=https://raw.githubusercontent.com/chemars/TV_EEW_Record/master/record.ahk"
SET "filename=record_download.ahk"

PowerShell -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%~dp0%filename%');"
START "" "%~dp0%filename%"