# 視頻+字幕下載程式
 - 開發需求
  - 你編寫的 Python 工具是單文件形式。它們總是以這個註釋開始：
```python  
# /// script
# requires-python = ">=3.12"
# ///這些文件可以包含對諸如 Click 之類庫的依賴。如果有依賴，這些依賴會在同一註釋中以列表形式列出（這裡展示兩個依賴）：# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "click",
#     "sqlite-utils",
# ]
# ///
```
 - 使用cli方式運行  
  - 輸入參數
   - 目標網址   
   - 輸出目錄
   - 是否分析字幕 (使用 @video_to_subtitle_faster.py srt格式)
   - 是否上傳到雲端 (用rclone)


 - 使用庫
  - click 
  - https://github.com/yt-dlp/yt-dlp
  - 參考 @video_downloader.py 來支援missav.ai,missav.ws下載

 - Workflow
  - 確認目標網址是否為yt-dlp支援或者missav.ai,missav.ws支援 如果不是就回報不支援這個來源的錯誤
  - 如果需要分析字幕 要以cli方式詢問用戶 
   - 中文
   - 韓語
   - 日文
   - 自動偵測
   確認後再使用 uv run video_to_subtitle_faster.py 指令
  - 要提供排程功能 一次只能下載一個視頻 分析一個字幕 可以使用sqlite方式儲存進度
   - 最長時間都設定為一小時
  - 可以查詢目前還有多少視頻在等待 目前視頻下載進度
   
