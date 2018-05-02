# 錄製電視台的地震速報
可於 Windows 10 上執行，Windows 7 待測試。

## 所需軟體
1. 地牛Wake Up! http://eew.earthquake.tw
* 適用 v2.0.0，下載前請先閱讀網頁說明。
2. AutoHotkey https://autohotkey.com/
* 下載 https://autohotkey.com/download/ （Download AutoHotkey Installer）
3. Streamlink https://streamlink.github.io/
* 下載 https://github.com/streamlink/streamlink/releases/latest （.exe）

下載並安裝。

## 準備步驟
1. 下載 record.ahk，在檔案上按右鍵選擇`Edit Script`可修改內容。
2. 下載 record.bat，在檔案上按右鍵選擇`編輯`可修改內容，格式為`start record.ahk的路徑`，預設為桌面，請依實際檔案路徑修改。
3. 開啟地牛Wake Up!，右上角設定>其他>連動設定，啟用並選取 record.bat。
4. 點擊`測試`，測試 record.ahk 能否執行，右下角通知區域將出現綠底白色H字的圖示，表示成功執行，在圖示上按右鍵選擇`Exit`可停止執行。
5. 當地牛Wake Up! 收到地震速報跳出視窗時，就會開始錄製影片。

## 其他
1. 截至2018年2月21日，與中央氣象局合作推播地震速報的電視台有東森、三立、TVBS、中天、中視、大愛。
