# Claude Code 一鍵安裝指南

這是一個專為 Mac 用戶設計的 Claude Code 完整開發環境自動安裝腳本，讓您一鍵完成所有必要工具的安裝。

## 📋 目錄

- [功能特色](#功能特色)
- [系統需求](#系統需求)
- [快速開始](#快速開始)
- [安裝內容](#安裝內容)
- [使用說明](#使用說明)
- [常見問題](#常見問題)
- [手動安裝](#手動安裝)
- [相關資源](#相關資源)

## ✨ 功能特色

- **一鍵安裝**：自動化安裝所有必要工具
- **智能檢測**：自動檢測已安裝的工具，避免重複安裝
- **互動式選項**：讓您選擇是否安裝可選工具
- **友好提示**：彩色輸出和進度顯示，清楚了解安裝狀態
- **錯誤處理**：完善的錯誤檢查和處理機制
- **安全可靠**：使用官方推薦的安裝方式

## 💻 系統需求

在開始之前，請確保您的系統符合以下需求：

- **作業系統**: macOS 13.0+ (Ventura 或更高版本)
- **硬體**: 4 GB+ RAM
- **網路**: 穩定的網際網路連線
- **Shell**: Zsh (macOS 預設) 或 Bash
- **訂閱**: Claude Pro、Max、Teams 或 Enterprise 帳號

## 🚀 快速開始

### 方法一：直接下載並執行（推薦）

```bash
# 1. 下載安裝腳本
curl -O https://raw.githubusercontent.com/你的用戶名/MacSetupTips/main/install-claude-code-tools.sh

# 2. 賦予執行權限
chmod +x install-claude-code-tools.sh

# 3. 執行安裝
./install-claude-code-tools.sh
```

### 方法二：Clone 整個倉庫

```bash
# 1. Clone 倉庫
git clone https://github.com/你的用戶名/MacSetupTips.git

# 2. 進入目錄
cd MacSetupTips

# 3. 執行安裝腳本
./install-claude-code-tools.sh
```

### 方法三：一行命令安裝

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/你的用戶名/MacSetupTips/main/install-claude-code-tools.sh)
```

## 📦 安裝內容

### 核心工具（自動安裝）

| 工具 | 用途 | 說明 |
|------|------|------|
| **Xcode Command Line Tools** | 編譯工具 | macOS 開發必備基礎工具 |
| **Homebrew** | 套件管理器 | macOS 最受歡迎的套件管理器 |
| **Claude Code** | AI 編程助手 | 主要工具，使用原生安裝器 |
| **Git** | 版本控制 | 程式碼版本管理 |
| **ripgrep (rg)** | 搜尋工具 | Claude Code 內部使用的超快速搜尋 |
| **jq** | JSON 處理 | 處理 JSON 資料的命令行工具 |

### 推薦增強工具（互動式選擇）

| 工具 | 用途 | 說明 |
|------|------|------|
| **bat** | 文件查看 | 具有語法高亮的 cat 替代品 |
| **fd** | 檔案搜尋 | 更快速友好的 find 替代品 |
| **fzf** | 模糊搜尋 | 強大的命令行模糊搜尋工具 |
| **tree** | 目錄顯示 | 樹狀顯示目錄結構 |
| **gh** | GitHub CLI | GitHub 官方命令行工具 |
| **exa** | 目錄列表 | 現代化的 ls 替代品 |
| **tldr** | 快速查詢 | 簡化版的 man pages |

### 可選工具（互動式選擇）

- **Oh-My-Zsh**: 美化和增強您的終端體驗
- **Git 設定**: 配置 Git 使用者名稱和郵箱

## 📖 使用說明

### 安裝流程

1. **系統檢查階段**
   - 驗證作業系統是否為 macOS
   - 檢查 macOS 版本是否符合需求

2. **核心工具安裝**
   - 安裝 Xcode Command Line Tools
   - 安裝或更新 Homebrew
   - 安裝 Claude Code（原生安裝器）
   - 安裝必備命令行工具

3. **可選工具安裝**
   - 詢問是否安裝推薦的增強工具
   - 詢問是否安裝 Oh-My-Zsh
   - 詢問是否設定 Git

4. **驗證與完成**
   - 執行 `claude doctor` 驗證安裝
   - 顯示後續步驟和有用資訊

### 安裝後的步驟

安裝完成後，請依照以下步驟開始使用 Claude Code：

```bash
# 1. 重新載入 shell 設定
source ~/.zshrc

# 2. 登入 Claude Code
claude auth login

# 3. 進入您的專案目錄
cd your-project

# 4. 啟動 Claude Code
claude
```

### 常用命令

```bash
# 查看 Claude Code 版本
claude --version

# 檢查安裝狀態
claude doctor

# 更新到最新版本
claude update

# 查看幫助
claude --help

# 在當前目錄啟動 Claude Code
claude
```

## ❓ 常見問題

### Q1: 腳本在哪個步驟需要我的輸入？

腳本會在以下情況詢問您：
- 是否開始安裝（開始時）
- 是否安裝推薦工具
- 是否安裝 Oh-My-Zsh
- 是否設定 Git（如果尚未設定）
- 是否更新 Claude Code（如果已安裝）

### Q2: 我已經安裝了某些工具，腳本會重複安裝嗎？

不會。腳本會自動檢測已安裝的工具並跳過，只安裝缺少的部分。

### Q3: 安裝失敗怎麼辦？

1. 檢查錯誤訊息，腳本會提供詳細的錯誤資訊
2. 確保您的網路連線穩定
3. 嘗試手動安裝失敗的工具（見下方「手動安裝」章節）
4. 重新執行腳本（已安裝的工具會被跳過）

### Q4: Apple Silicon (M1/M2/M3) Mac 可以使用嗎？

可以！腳本會自動偵測 Apple Silicon 並正確設定 Homebrew 路徑。

### Q5: 我需要 sudo 權限嗎？

部分安裝步驟可能需要管理員權限，系統會在需要時提示您輸入密碼。

### Q6: 如何卸載？

卸載 Claude Code：
```bash
rm -f ~/.local/bin/claude
rm -rf ~/.local/share/claude
```

清除所有設定（可選）：
```bash
rm -rf ~/.claude
rm ~/.claude.json
```

卸載其他工具：
```bash
brew uninstall <工具名稱>
```

### Q7: Claude Code 需要訂閱嗎？

是的，Claude Code 需要以下任一訂閱：
- Claude Pro 個人訂閱
- Claude Max 個人訂閱
- Claude for Teams 團隊訂閱
- Claude for Enterprise 企業訂閱

或透過雲端提供商 API（Amazon Bedrock、Google Vertex AI、Microsoft Foundry）

## 🔧 手動安裝

如果您偏好手動安裝，可以依照以下步驟：

### 1. 安裝 Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Apple Silicon 額外步驟：
```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### 2. 安裝 Claude Code

**原生安裝器（推薦）**：
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

**Homebrew 安裝**：
```bash
brew install --cask claude-code
```

### 3. 安裝必備工具

```bash
brew install git ripgrep jq
```

### 4. 安裝推薦工具（可選）

```bash
brew install bat fd fzf tree gh exa tldr
```

### 5. 安裝 Oh-My-Zsh（可選）

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 📚 相關資源

### 官方資源

- [Claude Code 官方文檔](https://code.claude.com/docs)
- [Claude Code GitHub](https://github.com/anthropics/claude-code)
- [Claude 官網](https://claude.ai)
- [Anthropic 支援的國家](https://www.anthropic.com/supported-countries)

### 本倉庫其他指南

- [開發訣竅](ClaudeCodeTips.md) - Claude Code 使用技巧
- [鍵盤快速鍵對照表](keyboard-shortcuts-comparison.md) - Mac 快速鍵指南
- [Telegram 機器人設置](telegram-bot-setup.md) - Telegram Bot 申請教學

### 工具文檔

- [Homebrew 官網](https://brew.sh)
- [Oh-My-Zsh GitHub](https://github.com/ohmyzsh/ohmyzsh)
- [ripgrep GitHub](https://github.com/BurntSushi/ripgrep)
- [fzf GitHub](https://github.com/junegunn/fzf)

## 🤝 貢獻

歡迎提交 Issues 和 Pull Requests 來改進這個安裝腳本！

## 📝 授權

MIT License

## ⚠️ 免責聲明

此腳本由社群維護，非 Anthropic 官方提供。使用前請確保您了解腳本的操作內容。

---

**最後更新**: 2026-01-17

如有任何問題或建議，歡迎在 GitHub Issues 中提出！
