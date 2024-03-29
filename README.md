# 錄製電視台的地震速報
針對台灣的電視台，於 Windows 10 執行。

## 所需軟體
1. [地牛Wake Up!](https://eew.earthquake.tw)
* 適用 v2.0.0 以上版本，下載前請先閱讀網頁說明。
2. [AutoHotkey](https://www.autohotkey.com/)
* 下載 https://www.autohotkey.com/download/
3. [Streamlink](https://streamlink.github.io/)
* 下載 https://github.com/streamlink/streamlink/releases/latest

下載以上軟體並安裝。

## 準備步驟
1. 下載 record_download.bat。
2. 開啟地牛Wake Up!，右上角設定圖示>其他>連動設定，啟用並選擇 record_download.bat。
3. 點擊`測試`，確認能否執行，若成功執行，右下角通知區域將出現綠底白色H字的圖示，並且開啟錄製視窗，在圖示上按右鍵選擇`Exit`可停止執行，測試時錄製視窗需手動關閉。
4. 當地牛Wake Up! 收到地震速報跳出視窗時，就會自動下載最新的錄製程式，開始錄製影片，預設11分鐘後結束錄製。

## 其他
1. 與中央氣象局合作推播地震速報的電視台有東森、三立、TVBS、中天、中視、大愛、民視、公視、華視、鏡電視。
2. 因[各種限制](https://www.cna.com.tw/news/ahel/202204010223.aspx)，並非所有電視台都會錄製。
3. 電視台訊號來自網路直播，其畫面可能與有線電視有所不同。
4. record_download.bat 會自動下載最新的錄製程式，若不要自動下載，請改使用 record.bat、record.ahk，[相關說明](https://github.com/chemars/TV_EEW_Record/blob/b11718917878239e1df5f0fc1de92dc841de145a/README.md)。
