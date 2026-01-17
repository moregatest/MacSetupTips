# Claude Code 工具使用指南

本文檔展示如何在 Claude Code 中充分利用已安裝的終端工具，提升開發效率。

## 🎯 前置需求

確保您已經使用 `install-claude-code-tools.sh` 安裝了所需工具，或手動安裝了以下工具：
- Git, ripgrep, jq (必備)
- bat, fd, fzf, tree, gh, exa, tldr (推薦)

## 📚 工具使用範例

### 1. ripgrep (rg) - 超快速代碼搜尋

ripgrep 是 Claude Code 內部使用的搜尋引擎，您也可以直接使用它：

```bash
# 搜尋包含特定文字的檔案
rg "function.*login" --type js

# 搜尋並顯示行號和上下文
rg "API_KEY" -n -C 3

# 搜尋特定副檔名的檔案
rg "import.*React" -g "*.tsx"

# 搜尋並排除特定目錄
rg "TODO" --glob "!node_modules/*" --glob "!dist/*"

# 只顯示包含匹配的檔案名稱
rg "console.log" -l

# 搜尋多個模式
rg -e "error" -e "warning" --type python
```

**在 Claude Code 中使用**：
```
請使用 ripgrep 搜尋所有包含 "deprecated" 的 TypeScript 檔案
```

### 2. jq - JSON 處理工具

處理 API 回應、配置檔案和 package.json：

```bash
# 美化顯示 JSON
cat package.json | jq '.'

# 提取特定欄位
cat package.json | jq '.dependencies'

# 獲取所有依賴項的名稱
jq -r '.dependencies | keys[]' package.json

# 查找特定版本的套件
jq '.dependencies | to_entries[] | select(.value | contains("^18"))' package.json

# 修改 JSON（創建新檔案）
jq '.scripts.test = "jest"' package.json > package.new.json

# 處理 API 回應
curl -s https://api.github.com/repos/anthropics/claude-code | jq '.stargazers_count'
```

**在 Claude Code 中使用**：
```
請使用 jq 從 package.json 中提取所有開發依賴項的名稱
```

### 3. bat - 增強版 cat

帶語法高亮的檔案查看工具：

```bash
# 查看檔案並顯示行號和 Git 修改標記
bat src/index.ts

# 顯示不可列印字元
bat --show-all script.sh

# 只顯示特定範圍的行
bat --line-range 10:30 README.md

# 比較兩個檔案（配合 diff）
diff <(bat --plain file1.txt) <(bat --plain file2.txt)

# 與管道配合使用
curl -s https://api.github.com/users/anthropic | bat -l json
```

**在 Claude Code 中使用**：
```
請使用 bat 顯示 src/utils/auth.ts 檔案的內容，特別關注 20-50 行
```

### 4. fd - 現代化的檔案搜尋

比 find 更快速、更友好：

```bash
# 搜尋所有 TypeScript 檔案
fd -e ts -e tsx

# 搜尋特定名稱的檔案
fd "config"

# 搜尋並排除特定目錄
fd -e js --exclude node_modules --exclude dist

# 搜尋隱藏檔案
fd -H "\.env"

# 執行命令（類似 find -exec）
fd -e test.ts -x echo "Testing: {}"

# 只搜尋檔案或只搜尋目錄
fd -t f "component"  # 只搜尋檔案
fd -t d "src"        # 只搜尋目錄

# 限制搜尋深度
fd -d 2 -e json
```

**在 Claude Code 中使用**：
```
請使用 fd 找出所有的測試檔案（*.test.ts 和 *.spec.ts）
```

### 5. fzf - 模糊搜尋工具

互動式模糊搜尋，可與其他命令組合：

```bash
# 模糊搜尋檔案並用編輯器打開
vim $(fzf)

# 搜尋並預覽檔案內容
fzf --preview 'bat --color=always {}'

# 搜尋 Git 追蹤的檔案
git ls-files | fzf

# 搜尋命令歷史
history | fzf

# 搜尋並切換 Git 分支
git branch | fzf | xargs git checkout

# 與 ripgrep 組合使用
rg --files | fzf --preview 'bat --color=always {}'
```

**在 Claude Code 中使用**：
```
請協助我設定一個 fzf 命令來搜尋並預覽所有 TypeScript 元件檔案
```

### 6. tree - 目錄結構顯示

視覺化顯示目錄結構：

```bash
# 顯示當前目錄結構
tree

# 限制顯示層級
tree -L 2

# 只顯示目錄
tree -d

# 顯示隱藏檔案
tree -a

# 排除特定目錄
tree -I 'node_modules|dist|.git'

# 以 JSON 格式輸出
tree -J -L 2 > structure.json

# 顯示檔案大小
tree -h

# 只顯示符合模式的檔案
tree -P "*.ts" --prune
```

**在 Claude Code 中使用**：
```
請使用 tree 顯示 src 目錄的結構（限制 3 層深度），並排除 node_modules
```

### 7. gh - GitHub CLI

直接在終端操作 GitHub：

```bash
# 查看當前倉庫狀態
gh repo view

# 列出 Pull Requests
gh pr list

# 查看特定 PR
gh pr view 123

# 創建 PR
gh pr create --title "新功能" --body "功能描述"

# 查看 Issues
gh issue list

# 創建 Issue
gh issue create --title "Bug 報告" --body "Bug 描述"

# Clone 倉庫（自動設定 SSH）
gh repo clone user/repo

# 查看 PR 的 diff
gh pr diff 123

# 在瀏覽器中打開當前倉庫
gh repo view --web

# 執行工作流程
gh workflow run test.yml
```

**在 Claude Code 中使用**：
```
請使用 gh 列出所有開放的 Pull Requests，並顯示它們的標題和作者
```

### 8. exa - 現代化的 ls

更美觀、功能更強的檔案列表工具：

```bash
# 基本列表（帶圖示和顏色）
exa

# 長格式顯示（類似 ls -l）
exa -l

# 顯示所有檔案（包含隱藏檔案）
exa -a

# 樹狀顯示
exa --tree --level=2

# 按修改時間排序
exa -l --sort=modified

# 顯示 Git 狀態
exa -l --git

# 顯示檔案大小（人類可讀格式）
exa -lh

# 只顯示目錄
exa -D

# 按副檔名分組
exa -l --group-directories-first
```

**在 Claude Code 中使用**：
```
請使用 exa 顯示當前目錄下所有檔案的詳細資訊，包含 Git 狀態
```

### 9. tldr - 簡化的 man pages

快速查看命令的常用範例：

```bash
# 查看 git 的常用命令
tldr git

# 查看 curl 的使用範例
tldr curl

# 查看 tar 的使用方法
tldr tar

# 更新 tldr 資料庫
tldr --update

# 列出所有可用的命令
tldr --list
```

**在 Claude Code 中使用**：
```
當我不確定某個命令的用法時，請建議我使用 tldr 快速查看範例
```

## 🔧 工具組合使用技巧

### 場景 1：尋找並編輯包含特定文字的檔案

```bash
# 使用 ripgrep 搜尋，fzf 選擇，bat 預覽
rg --files-with-matches "TODO" | fzf --preview 'bat --color=always {}' | xargs code
```

### 場景 2：分析專案依賴

```bash
# 找出所有 package.json 並分析依賴
fd package.json -x jq '.dependencies | keys[]' {} | sort -u
```

### 場景 3：清理臨時檔案

```bash
# 使用 fd 找出所有 .log 檔案並刪除
fd -e log -x rm {}
```

### 場景 4：查看最近修改的檔案

```bash
# 使用 exa 顯示最近修改的 10 個檔案
exa -l --sort=modified | head -10
```

### 場景 5：程式碼審查準備

```bash
# 使用 tree 生成目錄結構，使用 rg 統計程式碼行數
tree -I 'node_modules|dist' > structure.txt
rg --stats "" --type ts --type tsx
```

### 場景 6：API 測試與資料提取

```bash
# 測試 API 並美化輸出
curl -s https://api.github.com/repos/anthropics/claude-code | jq '.name, .description, .stargazers_count'
```

## 💡 Claude Code 互動範例

### 範例 1：程式碼搜尋與重構

**您**：
```
請使用 ripgrep 找出所有使用了舊版 API 的檔案（搜尋 "api.v1"），
然後幫我規劃如何重構到新版 API
```

**Claude Code** 會：
1. 執行 `rg "api.v1" -l` 找出所有相關檔案
2. 使用 `bat` 查看這些檔案的內容
3. 分析並提供重構建議

### 範例 2：依賴管理

**您**：
```
請使用 jq 分析 package.json，找出所有版本過舊的依賴項（版本號 < 1.0）
```

**Claude Code** 會：
1. 執行 `jq` 命令提取依賴
2. 分析版本號
3. 提供升級建議

### 範例 3：專案結構分析

**您**：
```
請使用 tree 顯示 src 目錄的結構，然後使用 fd 統計各類型檔案的數量
```

**Claude Code** 會：
1. 執行 `tree -L 3 src` 顯示結構
2. 執行 `fd -e ts | wc -l` 等命令統計
3. 生成專案結構報告

### 範例 4：Git 工作流程

**您**：
```
請使用 gh 查看最近 5 個 PR 的狀態，並告訴我哪些需要我審查
```

**Claude Code** 會：
1. 執行 `gh pr list --limit 5`
2. 分析 PR 資訊
3. 提供待審查清單

## 📖 最佳實踐

### 1. 善用 Shell 別名

在 `~/.zshrc` 中添加常用組合：

```bash
# 快速搜尋並預覽
alias search="rg --files-with-matches | fzf --preview 'bat --color=always {}'"

# 美化的目錄列表
alias ll="exa -l --git --icons"
alias la="exa -la --git --icons"
alias tree="exa --tree --level=2 --icons"

# Git 快捷方式
alias gst="git status"
alias glog="git log --oneline --graph --decorate"

# 快速查看 package.json
alias pkg="bat package.json"
```

### 2. 結合 Claude Code 的工作流程

**開始新功能前**：
```
請使用 tree 和 fd 幫我了解相關模組的結構，
然後用 rg 找出類似功能的實現範例
```

**程式碼審查前**：
```
請使用 rg 檢查是否有 console.log 或 debugger 語句需要移除
```

**部署前檢查**：
```
請使用 jq 確認 package.json 中的版本號已更新，
並用 gh 檢查是否有未合併的 PR
```

### 3. 效能最佳化

- 使用 `ripgrep` 代替 `grep`（速度快 10-100 倍）
- 使用 `fd` 代替 `find`（語法更簡潔，速度更快）
- 使用 `bat` 代替 `cat`（更好的可讀性）
- 使用 `exa` 代替 `ls`（更豐富的資訊）

### 4. 安全注意事項

- 不要將 API keys 或 secrets 提交到版本控制
- 使用 `rg` 定期檢查敏感資訊：
  ```bash
  rg -i "api[_-]?key|password|secret|token" --glob "!*.md"
  ```

## 🎓 學習資源

- **ripgrep**: https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md
- **jq**: https://stedolan.github.io/jq/manual/
- **bat**: https://github.com/sharkdp/bat
- **fd**: https://github.com/sharkdp/fd
- **fzf**: https://github.com/junegunn/fzf#usage
- **GitHub CLI**: https://cli.github.com/manual/
- **exa**: https://the.exa.website/

## 💬 與 Claude Code 互動時的提示

### 有效的請求方式

✅ **具體明確**：
```
使用 ripgrep 搜尋所有包含 "useEffect" 的 React 元件
```

✅ **說明目的**：
```
我想重構認證邏輯，請用 rg 找出所有相關檔案並分析現有實現
```

✅ **組合工具**：
```
使用 fd 找出所有測試檔案，然後用 bat 顯示最近修改的 3 個
```

### 避免的請求方式

❌ **過於模糊**：
```
幫我找檔案
```

❌ **沒有上下文**：
```
搜尋 login
```

## 🚀 快速參考

| 任務 | 推薦工具 | 命令範例 |
|------|---------|---------|
| 搜尋程式碼 | ripgrep | `rg "pattern" --type ts` |
| 尋找檔案 | fd | `fd -e tsx "component"` |
| 查看檔案 | bat | `bat --line-range 10:20 file.ts` |
| 處理 JSON | jq | `jq '.dependencies' package.json` |
| 模糊搜尋 | fzf | `git ls-files \| fzf --preview 'bat {}'` |
| 目錄結構 | tree/exa | `exa --tree -L 2` |
| GitHub 操作 | gh | `gh pr list --state open` |
| 列出檔案 | exa | `exa -l --git` |
| 查命令用法 | tldr | `tldr git` |

---

**提示**：將此文檔加入書籤，在使用 Claude Code 時隨時參考！

如需更多幫助，請參閱：
- [Claude Code 官方文檔](https://code.claude.com/docs)
- [安裝指南](claude-code-installer-guide.md)
- [開發訣竅](ClaudeCodeTips.md)
