# 錄製電視台的地震速報

## 所需軟體
1. 地牛Wake Up! http://eew.earthquake.tw
* 下載前請先閱讀網頁說明。
2. AutoHotkey https://autohotkey.com/
* 下載 https://autohotkey.com/download/ （Download AutoHotkey Installer）
3. Streamlink https://streamlink.github.io/
* 下載 https://github.com/streamlink/streamlink/releases/latest （.exe）

下載並安裝，地牛Wake Up! 需要進一步設定。

## 準備步驟
1. 下載 record.ahk，在檔案上按右鍵選擇 Edit Script 可修改內容。
2. 確定地牛Wake Up! 執行中，視窗為關閉狀態，此時僅有圖示出現於右下角通知區域。
3. 點擊 record.ahk，右下角通知區域將出現綠底白色H字的圖示，表示成功執行，在圖示上按右鍵選擇 Exit 可停止執行。
4. 當 record.ahk 執行中，地牛Wake Up! 收到地震速報跳出視窗時，就會開始錄製影片。
5. 可手動點擊地牛Wake Up! 在右下角通知區域的圖示，開啟其視窗測試 record.ahk 是否正確執行。

## 已知問題
1. 直播網址經過一段時間會失效，需手動修改。
2. 若手動開啟地牛Wake Up! 視窗，將觸發錄製流程，此時可能未有地震速報。
3. 觸發機制未考慮地震規模及預估震度，可能地震未達電視台推播地震速報門檻但還是開始錄影。

## 其他
1. 截至2018年2月21日，與中央氣象局合作推播地震速報的電視台有東森、三立、TVBS、中天、中視、大愛。
