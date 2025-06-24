# Telegram 機器人申請指南

## 1. 申請 Telegram Bot

### 步驟一：開始與 BotFather 對話
1. 在 Telegram 中搜尋 `@BotFather`
2. 點擊開始對話
3. 輸入 `/newbot` 開始創建新機器人

### 步驟二：設置機器人基本資訊
1. **設置機器人名稱**
   - BotFather 會要求你輸入機器人的顯示名稱
   - 例如：`My Awesome Bot`

2. **設置機器人用戶名**
   - 用戶名必須以 `bot` 結尾
   - 例如：`my_awesome_bot` 或 `MyAwesomeBot`
   - 用戶名必須是唯一的

### 步驟三：獲取 Bot Token
創建成功後，BotFather 會提供：
- Bot Token（類似：`123456789:ABCdefGHIjklMNOpqrsTUVwxyz`）
- 機器人連結（`t.me/your_bot_username`）

## 2. 重要安全提醒

⚠️ **Token 安全**
- **絕對不要**將 Token 分享給他人
- **絕對不要**將 Token 提交到公開的代碼庫
- 建議使用環境變數儲存 Token

## 3. 基本配置命令

與 BotFather 對話時可使用以下命令：

```
/setdescription - 設置機器人描述
/setabouttext - 設置關於文字
/setuserpic - 設置機器人頭像
/setcommands - 設置機器人指令清單
/deletebot - 刪除機器人
```

## 4. 測試機器人

1. 在 Telegram 中搜尋你的機器人用戶名
2. 點擊 **Start** 開始對話
3. 此時機器人還無法回應，需要編寫程式碼

## 5. 下一步

機器人創建完成後，你可以：
- 使用 Python、Node.js 等語言開發機器人功能
- 參考 [Telegram Bot API 文件](https://core.telegram.org/bots/api)
- 將機器人部署到伺服器或雲端平台