# Mac 開發環境設置詳細步驟

## 1. 安裝 Oh-My-Zsh
```bash
# 安裝 Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 重新載入終端配置
source ~/.zshrc
```
## 2. Homebrew (套件管理器)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


## 3. GitHub 帳號設置
### 3.1 申請 GitHub 帳號
- 前往 [GitHub官網](https://github.com) 註冊帳號
- 驗證電子郵件地址

### 3.2 設置終端機 Git 存取 GitHub
```bash
# 配置 Git 使用者資訊
git config --global user.name "你的姓名"
git config --global user.email "你的GitHub註冊郵箱"
```

**使用 HTTPS + Personal Access Token**
1. 到 GitHub → Settings → Developer settings → Personal access tokens
2. 生成新的 token（建議選擇 Fine-grained tokens）
3. 第一次 git push 時會要求輸入認證，使用 token 作為密碼
4. macOS Keychain 會自動儲存認證資訊供後續使用


## 4. 安裝 uv (Python 套件管理器)
```bash
# 或使用官方安裝腳本
curl -LsSf https://astral.sh/uv/install.sh | sh

# 驗證安裝
uv --version
```

## 5. 安裝 Claude 桌面版
1. 前往 [Claude官網](https://claude.ai/download)
2. 下載 macOS 版本
3. 拖拉到 Applications 資料夾
4. 開啟並登入帳號

## 6. 安裝 Claude Code
```bash
# 使用 Homebrew 安裝
brew install anthropics/claude/claude

# 或使用 npm 安裝
npm install -g @anthropic-ai/claude-code

# 驗證安裝
claude --version

# 登入 Claude Code
claude auth login
```

## 其他建議安裝的開發工具

### Visual Studio Code
```bash
brew install --cask visual-studio-code
```

### Node.js (使用 nvm)
```bash
# 安裝 nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# 重新載入終端
source ~/.zshrc

# 安裝最新 LTS 版本的 Node.js
nvm install --lts
nvm use --lts
```

### jq (JSON 處理工具)
```bash
# 使用 Homebrew 安裝 jq
brew install jq

# 驗證安裝
jq --version
```

## 📚 進階學習資源

完成基本環境設置後，建議閱讀以下指南來提升你的開發技能：

### [開發訣竅](ClaudeCodeTips.md)
學習使用 Claude Code 進行高效開發的實用技巧，包括：
- 使用 uv + cli 快速啟動專案
- 撰寫詳細的開發計劃
- 要求完整的測試覆蓋
- 循序漸進的開發方法

### [鍵盤快速鍵對照表](keyboard-shortcuts-comparison.md)
Windows 鍵盤用戶在 Mac 系統上的快速鍵對照指南，涵蓋：
- 基本操作（複製、貼上、全選）
- 終端機操作技巧
- 視窗管理快速鍵
- 按鍵對應說明

### [Telegram 機器人申請指南](telegram-bot-setup.md)
詳細的 Telegram 機器人申請步驟，包括：
- 與 BotFather 互動流程
- 機器人基本設置
- Token 安全管理
- 基本配置命令