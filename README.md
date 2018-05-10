# 錄製電視台的地震速報
針對台灣的電視台，可於 Windows 7、Windows 10 執行。

## 所需軟體
1. 地牛Wake Up! http://eew.earthquake.tw
* 適用 v2.0.0，下載前請先閱讀網頁說明。
2. AutoHotkey https://autohotkey.com/
* 下載 https://autohotkey.com/download/
3. Streamlink https://streamlink.github.io/
* 下載 https://github.com/streamlink/streamlink/releases/latest

下載並安裝。

## 準備步驟
1. 下載 record.ahk，在檔案上按右鍵選擇`Edit Script`可修改內容。
2. 下載 record.bat，檔案位置須與 record.ahk 相同。
3. 開啟地牛Wake Up!，右上角設定圖示>其他>連動設定，啟用並選擇 record.bat。
4. 點擊`測試`，確認 record.ahk 能否執行，右下角通知區域將出現綠底白色H字的圖示，表示成功執行，在圖示上按右鍵選擇`Exit`可停止執行。
5. 當地牛Wake Up! 收到地震速報跳出視窗時，就會開始錄製影片。

## 其他
1. 截至2018年2月21日，與中央氣象局合作推播地震速報的電視台有東森、三立、TVBS、中天、中視、大愛。
2. 電視台訊號來自網路直播，其畫面可能與有線電視有所不同。
3. 建議在地牛Wake Up! 設定中調低通知震度，確保能錄製影片。
4. [錄製程式舊版本](https://github.com/chemars/TV_EEW_Record/tree/49a81bec1fe3b78127048fcdcdbd475d308f4fad)，適用於地牛Wake Up! 舊版（v1.3.4）。
