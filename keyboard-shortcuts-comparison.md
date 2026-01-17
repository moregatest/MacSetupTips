# Windows 鍵盤與 Mac 快速鍵對照表

本指南專為使用 **Windows 鍵盤** 操作 Mac 系統的用戶設計，包含完整的快速鍵對照表和系統設定說明。

## 🎯 Windows 鍵盤用戶必讀

### Windows 鍵盤在 Mac 上的按鍵映射

| Windows 鍵盤 | Mac 系統中的對應 | 說明 |
|-------------|----------------|------|
| `Win` 鍵 | `Cmd` (⌘) | 大多數快捷鍵的主要修飾鍵 |
| `Alt` 鍵 | `Option` (⌥) | 次要修飾鍵，用於特殊字元和進階功能 |
| `Ctrl` 鍵 | `Control` | 保持為 Control，主要用於終端機操作 |
| `Backspace` | `Delete` | 向前刪除字元 |
| 無對應鍵 | `Fn` + `Delete` | 向後刪除字元（Mac 的 Forward Delete） |
| `Enter` (小鍵盤) | `Enter` | 換行 |
| `PrtScn` | `Cmd + Shift + 3/4` | 螢幕截圖功能 |
| `Scroll Lock` | `F14` (若有) | 很少使用 |
| `Pause/Break` | 無直接對應 | 功能已不常用 |
| `Insert` | 無直接對應 | Mac 不支援插入模式 |
| `Home` | `Cmd + ←` | 跳到行首 |
| `End` | `Cmd + →` | 跳到行尾 |
| `Page Up` | `Fn + ↑` | 向上翻頁 |
| `Page Down` | `Fn + ↓` | 向下翻頁 |

### 🔧 Windows 鍵盤在 Mac 上的系統設定

#### 方法一：使用系統偏好設定調整按鍵映射

1. 開啟「系統偏好設定」→「鍵盤」
2. 點選「修飾鍵」按鈕（右下角）
3. 選擇你的 Windows 鍵盤
4. 自訂按鍵對應：
   - **Option 鍵** → 可改為 Command
   - **Command 鍵** → 可改為 Option
   - **Caps Lock** → 可改為 Control 或 Escape
5. 點選「好」儲存設定

> **建議配置**：許多 Windows 鍵盤用戶習慣將 `Alt` 和 `Win` 對調，使空白鍵旁的按鍵成為 Command，更符合 Mac 鍵盤的佈局。

#### 方法二：使用第三方工具 Karabiner-Elements

對於需要更進階按鍵自訂的用戶，推薦使用免費開源工具 [Karabiner-Elements](https://karabiner-elements.pqrs.org/)：

```bash
# 使用 Homebrew 安裝
brew install --cask karabiner-elements
```

**Karabiner-Elements 可實現：**
- 複雜的按鍵映射規則
- 將 Caps Lock 改為 Escape（程式設計師常用）
- 模擬 Mac 鍵盤的特殊功能鍵
- 針對不同應用程式設定不同的按鍵映射

### ⚠️ Windows 鍵盤用戶常見問題

**Q1: 為什麼 Windows 鍵盤的 Home/End 鍵行為不同？**
A: Mac 的 Home/End 預設是跳到整個文件的開頭/結尾，而非行首/行尾。建議使用 `Cmd + ←/→` 來移動到行首/行尾。

**Q2: 如何使用向後刪除（Forward Delete）？**
A: Windows 鍵盤通常沒有獨立的 Delete 鍵（向後刪除），使用 `Fn + Backspace` 或 `Fn + Delete` 來實現。

**Q3: Print Screen 鍵無法截圖？**
A: Mac 不支援 PrtScn 鍵，請使用 `Cmd + Shift + 3`（全螢幕）或 `Cmd + Shift + 4`（區域截圖）。

**Q4: Windows 鍵盤的 F1-F12 鍵被系統功能占用？**
A: 前往「系統偏好設定」→「鍵盤」，勾選「將 F1、F2 等按鍵用作標準功能鍵」，即可讓 F1-F12 不需按 Fn 就能使用。

**Q5: 如何快速辨識 Win 鍵就是 Cmd 鍵？**
A: 可以購買 Windows 鍵盤用的 Mac 按鍵貼紙，或記住「空白鍵左右兩側的鍵就是 Command 鍵」。

---

## 📋 快速鍵對照表

以下表格展示 Windows 與 Mac 的快速鍵對照，特別標註 Windows 鍵盤在 Mac 上的使用方式：

## 基本操作

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 複製 | `Ctrl + C` | `Cmd + C` | `⌘ + C` |
| 貼上 | `Ctrl + V` | `Cmd + V` | `⌘ + V` |
| 剪下 | `Ctrl + X` | `Cmd + X` | `⌘ + X` |
| 全選 | `Ctrl + A` | `Cmd + A` | `⌘ + A` |
| 復原 | `Ctrl + Z` | `Cmd + Z` | `⌘ + Z` |
| 重做 | `Ctrl + Y` 或 `Ctrl + Shift + Z` | `Cmd + Shift + Z` | `⌘ + Shift + Z` |
| 儲存 | `Ctrl + S` | `Cmd + S` | `⌘ + S` |
| 尋找 | `Ctrl + F` | `Cmd + F` | `⌘ + F` |
| 列印 | `Ctrl + P` | `Cmd + P` | `⌘ + P` |
| 新增 | `Ctrl + N` | `Cmd + N` | `⌘ + N` |
| 開啟 | `Ctrl + O` | `Cmd + O` | `⌘ + O` |
| 關閉視窗 | `Alt + F4` | `Cmd + W` | `⌘ + W` |
| 關閉應用程式 | `Alt + F4` | `Cmd + Q` | `⌘ + Q` |

## 文字編輯進階操作

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 跳到行首 | `Home` | `Cmd + ←` | `⌘ + ←` |
| 跳到行尾 | `End` | `Cmd + →` | `⌘ + →` |
| 跳到文件開頭 | `Ctrl + Home` | `Cmd + ↑` | `⌘ + ↑` |
| 跳到文件結尾 | `Ctrl + End` | `Cmd + ↓` | `⌘ + ↓` |
| 向左移動一個字詞 | `Ctrl + ←` | `Option + ←` | `⌥ + ←` |
| 向右移動一個字詞 | `Ctrl + →` | `Option + →` | `⌥ + →` |
| 刪除游標前一個字詞 | `Ctrl + Backspace` | `Option + Delete` | `⌥ + Delete` |
| 刪除游標後一個字詞 | `Ctrl + Delete` | `Fn + Option + Delete` | `Fn + ⌥ + Delete` |
| 刪除游標到行首 | - | `Cmd + Delete` | `⌘ + Delete` |
| 刪除游標到行尾 | - | `Ctrl + K` | `Ctrl + K` |
| 選取到行首 | `Shift + Home` | `Cmd + Shift + ←` | `⌘ + Shift + ←` |
| 選取到行尾 | `Shift + End` | `Cmd + Shift + →` | `⌘ + Shift + →` |
| 選取一個字詞 | `Ctrl + Shift + ←/→` | `Option + Shift + ←/→` | `⌥ + Shift + ←/→` |
| 選取到文件開頭 | `Ctrl + Shift + Home` | `Cmd + Shift + ↑` | `⌘ + Shift + ↑` |
| 選取到文件結尾 | `Ctrl + Shift + End` | `Cmd + Shift + ↓` | `⌘ + Shift + ↓` |

## 終端機操作

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 跳到終端機第一個字元 | `Home` 或 `Ctrl + A` | `Cmd + ←` 或 `Ctrl + A` | `⌘ + ←` 或 `Ctrl + A` |
| 跳到終端機最後一個字元 | `End` 或 `Ctrl + E` | `Cmd + →` 或 `Ctrl + E` | `⌘ + →` 或 `Ctrl + E` |

### `screen` 指令常用操作

`screen` 是一個終端機多工器，可讓您在單一終端機視窗中執行多個終端機工作階段。

| 功能 | 指令 / 快速鍵 | 說明 |
|--------------------|-----------------------------|------------------------------------------|
| 啟動新 session | `screen` | 啟動一個新的 screen session |
| 離開目前 session | `Ctrl + a`, `d` | 暫時離開目前的 session (detach) |
| 列出所有 session | `screen -ls` | 列出所有在背景運行的 screen sessions |
| 回復指定 session | `screen -r [session_id]` | 回復到指定的 session |
| 建立新視窗 | `Ctrl + a`, `c` | 在目前的 session 中建立一個新的終端機視窗 |
| 切換到下個視窗 | `Ctrl + a`, `n` | 切換到下一個視窗 |
| 切換到上個視窗 | `Ctrl + a`, `p` | 切換到上一個視窗 |
| 關閉目前視窗 | `Ctrl + a`, `k` 或 `exit` | 關閉目前的視窗 |

## Spotlight 與系統搜尋

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 開啟 Spotlight 搜尋 | `Win + S` | `Cmd + Space` | `⌘ + Space` |
| 開啟 Finder 搜尋 | `Win + F` | `Cmd + Option + Space` | `⌘ + ⌥ + Space` |
| 顯示表情符號鍵盤 | `Win + .` | `Ctrl + Cmd + Space` | `Ctrl + ⌘ + Space` |

## Finder 檔案管理

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 開啟新 Finder 視窗 | `Win + E` | `Cmd + N` | `⌘ + N` |
| 開啟新資料夾 | `Ctrl + Shift + N` | `Cmd + Shift + N` | `⌘ + Shift + N` |
| 前往上層資料夾 | `Alt + ↑` | `Cmd + ↑` | `⌘ + ↑` |
| 進入選取的資料夾 | `Enter` | `Cmd + ↓` 或 `Cmd + O` | `⌘ + ↓` 或 `⌘ + O` |
| 返回上一個資料夾 | `Alt + ←` | `Cmd + [` | `⌘ + [` |
| 前往下一個資料夾 | `Alt + →` | `Cmd + ]` | `⌘ + ]` |
| 移至垃圾桶 | `Delete` | `Cmd + Delete` | `⌘ + Delete` |
| 清空垃圾桶 | - | `Cmd + Shift + Delete` | `⌘ + Shift + Delete` |
| 顯示/隱藏隱藏檔案 | - | `Cmd + Shift + .` | `⌘ + Shift + .` |
| 重新命名 | `F2` | `Enter` | `Enter` |
| 快速查看檔案 | - | `Space` | `Space` |
| 前往特定資料夾 | - | `Cmd + Shift + G` | `⌘ + Shift + G` |
| 前往「應用程式」 | - | `Cmd + Shift + A` | `⌘ + Shift + A` |
| 前往「下載項目」 | - | `Cmd + Option + L` | `⌘ + ⌥ + L` |
| 前往「桌面」 | - | `Cmd + Shift + D` | `⌘ + Shift + D` |
| 前往「個人專屬」 | - | `Cmd + Shift + H` | `⌘ + Shift + H` |
| 複製檔案路徑 | - | `Cmd + Option + C` | `⌘ + ⌥ + C` |
| 製作替身(捷徑) | `Ctrl + Shift + 拖曳` | `Cmd + L` | `⌘ + L` |

## 螢幕截圖

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 全螢幕截圖 | `PrtScn` | `Cmd + Shift + 3` | `⌘ + Shift + 3` |
| 區域截圖 | `Win + Shift + S` | `Cmd + Shift + 4` | `⌘ + Shift + 4` |
| 視窗截圖 | - | `Cmd + Shift + 4` 後按 `Space` | `⌘ + Shift + 4` 後按 `Space` |
| 截圖到剪貼簿(全螢幕) | - | `Cmd + Ctrl + Shift + 3` | `⌘ + Ctrl + Shift + 3` |
| 截圖到剪貼簿(區域) | - | `Cmd + Ctrl + Shift + 4` | `⌘ + Ctrl + Shift + 4` |
| 開啟截圖工具列 | - | `Cmd + Shift + 5` | `⌘ + Shift + 5` |

## 視窗與應用程式管理

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 切換應用程式 | `Alt + Tab` | `Cmd + Tab` | `⌘ + Tab` |
| 反向切換應用程式 | `Alt + Shift + Tab` | `Cmd + Shift + Tab` | `⌘ + Shift + Tab` |
| 切換同應用程式視窗 | - | `Cmd + ~` (波浪符號) | `⌘ + ~` |
| 最小化視窗 | `Win + ↓` | `Cmd + M` | `⌘ + M` |
| 隱藏目前應用程式 | - | `Cmd + H` | `⌘ + H` |
| 隱藏其他應用程式 | - | `Cmd + Option + H` | `⌘ + ⌥ + H` |
| 全螢幕模式 | `F11` | `Ctrl + Cmd + F` | `Ctrl + ⌘ + F` |
| 顯示所有視窗(Mission Control) | `Win + Tab` | `Ctrl + ↑` 或 `F3` | `Ctrl + ↑` 或 `F3` |
| 顯示桌面 | `Win + D` | `F11` 或 `Cmd + F3` | `F11` 或 `⌘ + F3` |
| 左右桌面切換 | `Win + Ctrl + ←/→` | `Ctrl + ←/→` | `Ctrl + ←/→` |
| 強制結束應用程式 | `Ctrl + Alt + Delete` | `Cmd + Option + Esc` | `⌘ + ⌥ + Esc` |

## 系統功能

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 鎖定螢幕 | `Win + L` | `Ctrl + Cmd + Q` | `Ctrl + ⌘ + Q` |
| 登出 | - | `Cmd + Shift + Q` | `⌘ + Shift + Q` |
| 關機對話框 | - | `Ctrl + 電源鍵` | `Ctrl + 電源鍵` |
| 強制重新啟動 | `Ctrl + Alt + Delete` | `Cmd + Ctrl + 電源鍵` | `⌘ + Ctrl + 電源鍵` |
| 睡眠 | - | `Cmd + Option + 電源鍵` | `⌘ + ⌥ + 電源鍵` |
| 顯示器睡眠 | - | `Ctrl + Shift + 電源鍵` | `Ctrl + Shift + 電源鍵` |
| 開啟系統偏好設定 | `Win + I` | `Cmd + ,` (在大多數應用程式) | `⌘ + ,` |

## 瀏覽器操作 (Safari / Chrome / Firefox)

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 新增分頁 | `Ctrl + T` | `Cmd + T` | `⌘ + T` |
| 關閉分頁 | `Ctrl + W` | `Cmd + W` | `⌘ + W` |
| 重新開啟關閉的分頁 | `Ctrl + Shift + T` | `Cmd + Shift + T` | `⌘ + Shift + T` |
| 切換到下一個分頁 | `Ctrl + Tab` | `Cmd + Option + →` | `⌘ + ⌥ + →` |
| 切換到上一個分頁 | `Ctrl + Shift + Tab` | `Cmd + Option + ←` | `⌘ + ⌥ + ←` |
| 跳到特定分頁 | `Ctrl + 1~8` | `Cmd + 1~8` | `⌘ + 1~8` |
| 跳到最後一個分頁 | `Ctrl + 9` | `Cmd + 9` | `⌘ + 9` |
| 重新載入頁面 | `F5` 或 `Ctrl + R` | `Cmd + R` | `⌘ + R` |
| 強制重新載入 | `Ctrl + F5` | `Cmd + Shift + R` | `⌘ + Shift + R` |
| 回到上一頁 | `Alt + ←` | `Cmd + [` | `⌘ + [` |
| 前往下一頁 | `Alt + →` | `Cmd + ]` | `⌘ + ]` |
| 跳到網址列 | `Ctrl + L` 或 `Alt + D` | `Cmd + L` | `⌘ + L` |
| 開啟書籤管理 | `Ctrl + Shift + B` | `Cmd + Option + B` | `⌘ + ⌥ + B` |
| 加入書籤 | `Ctrl + D` | `Cmd + D` | `⌘ + D` |
| 開啟開發者工具 | `F12` | `Cmd + Option + I` | `⌘ + ⌥ + I` |
| 開啟無痕視窗 | `Ctrl + Shift + N` | `Cmd + Shift + N` | `⌘ + Shift + N` |
| 清除瀏覽資料 | `Ctrl + Shift + Delete` | `Cmd + Shift + Delete` | `⌘ + Shift + Delete` |
| 顯示/隱藏書籤列 | `Ctrl + Shift + B` | `Cmd + Shift + B` | `⌘ + Shift + B` |
| 頁面放大 | `Ctrl + +` | `Cmd + +` | `⌘ + +` |
| 頁面縮小 | `Ctrl + -` | `Cmd + -` | `⌘ + -` |
| 重設頁面大小 | `Ctrl + 0` | `Cmd + 0` | `⌘ + 0` |

## 輔助功能與特殊輸入

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 表情符號與符號 | `Win + .` | `Ctrl + Cmd + Space` | `Ctrl + ⌘ + Space` |
| 字元檢視器 | - | `Cmd + Option + T` | `⌘ + ⌥ + T` |
| 切換輸入法 | `Ctrl + Space` | `Ctrl + Space` | `Ctrl + Space` |
| 顯示輸入法選單 | - | `Ctrl + Option + Space` | `Ctrl + ⌥ + Space` |
| 聽寫功能 | `Win + H` | `Fn + Fn` (按兩下 Fn) | `Fn + Fn` |
| 縮放螢幕 | `Win + +` | `Cmd + Option + =` | `⌘ + ⌥ + =` |
| 反轉顏色 | - | `Ctrl + Cmd + Option + 8` | `Ctrl + ⌘ + ⌥ + 8` |

## 💡 Windows 鍵盤用戶專屬技巧

### 鍵位記憶法

**記住這個黃金法則**：在 Mac 上使用 Windows 鍵盤時，把所有「`Ctrl` 改成 `Win` 鍵」就對了！

| Windows 系統 | Mac 系統（用 Windows 鍵盤） | 說明 |
|------------|------------------------|------|
| `Ctrl + C` | `Win + C` | 複製 |
| `Ctrl + V` | `Win + V` | 貼上 |
| `Ctrl + S` | `Win + S` | 儲存 |
| `Ctrl + F` | `Win + F` | 尋找 |
| `Ctrl + Z` | `Win + Z` | 復原 |

### 推薦的 Windows 鍵盤型號（適用於 Mac）

以下鍵盤特別適合 Mac 用戶：

1. **Keychron K 系列**（K2/K3/K8 等）
   - 支援 Mac/Windows 雙模式切換
   - 有實體切換開關，自動調整按鍵映射
   - 機械鍵盤，手感佳

2. **Logitech MX Keys**
   - 支援多設備切換
   - Mac 專用配置模式
   - 優秀的打字體驗

3. **Microsoft Surface Keyboard**
   - 輕薄設計
   - 藍牙連接穩定
   - 需要手動設定按鍵映射

### Windows 鍵盤特殊按鍵的 Mac 替代方案

| Windows 特殊鍵 | 在 Mac 上的替代方案 | 說明 |
|--------------|-------------------|------|
| `PrtScn` | `Cmd + Shift + 3` | 全螢幕截圖 |
| `Win + PrtScn` | `Cmd + Shift + 4` | 區域截圖 |
| `Alt + PrtScn` | `Cmd + Shift + 4` 後按 `Space` | 視窗截圖 |
| `Ctrl + Alt + Del` | `Cmd + Option + Esc` | 強制結束應用程式 |
| `Win + L` | `Ctrl + Cmd + Q` | 鎖定螢幕 |
| `Win + E` | `Cmd + N`（在 Finder 中） | 開啟檔案總管/Finder |
| `Win + D` | `F11` 或 `Cmd + F3` | 顯示桌面 |
| `Win + Tab` | `Ctrl + ↑` | Mission Control（顯示所有視窗） |
| `Win + I` | `Cmd + ,` | 開啟設定（在多數應用程式中） |
| `F2` | `Enter` | 重新命名檔案（在 Finder 中） |

### 提升 Windows 鍵盤在 Mac 上的使用體驗

**1. 購買按鍵貼紙**
   - 在鍵盤上貼上 Mac 符號貼紙（⌘ ⌥ ⌃）
   - 幫助視覺記憶和快速識別

**2. 練習常用快捷鍵**
   - 先記住最常用的 10 個快捷鍵
   - 每天刻意練習，一週內即可習慣

**3. 建立速查表**
   - 將本文列印或儲存為 PDF
   - 放在桌面或書籤，隨時查閱

**4. 使用輔助工具**
   - **CheatSheet**：長按 `Cmd` 鍵顯示當前應用程式的所有快捷鍵
   - **KeyCastr**：在螢幕上顯示你按下的按鍵，幫助學習

```bash
# 安裝 CheatSheet
brew install --cask cheatsheet

# 安裝 KeyCastr
brew install --cask keycastr
```

## 📝 按鍵對應快速參考

### 核心概念（Windows 鍵盤用戶）
- ✅ **Windows 上按 `Ctrl`** → Mac 上按 **`Win` 鍵**
- ✅ **Windows 上按 `Win`** → Mac 上按 **`Cmd`（Win）鍵**
- ✅ **Windows 上按 `Alt`** → Mac 上按 **`Alt`（即 Option）鍵**
- ✅ **終端機例外**：`Ctrl + A`、`Ctrl + E`、`Ctrl + K` 等保持使用 `Ctrl` 鍵

### 重要注意事項（Windows 鍵盤用戶必看）
1. **核心原則**：在 Mac 上使用 Windows 鍵盤時，將 Windows 系統的 `Ctrl` 替換為 `Win` 鍵（即 Mac 的 `Cmd` 鍵）
2. **終端機例外**：終端機中的 `Ctrl + A`、`Ctrl + E`、`Ctrl + K` 等 Emacs 風格快速鍵保持使用 `Ctrl`，在兩個系統中都相同
3. **Home/End 行為差異**：Windows 鍵盤的 `Home`/`End` 鍵在 Mac 上會跳到文件開頭/結尾（而非行首/行尾），建議改用 `Cmd + ←/→` 來跳到行首/行尾
4. **Page Up/Down**：Windows 鍵盤的 `Page Up`/`Page Down` 可以正常使用，或使用 `Fn + ↑/↓`
5. **向後刪除**：Windows 鍵盤通常只有 `Backspace`（向前刪除），若需向後刪除請使用 `Fn + Delete` 或 `Fn + Backspace`
6. **F1-F12 功能鍵**：預設被系統功能占用（亮度、音量等），可在「系統偏好設定」→「鍵盤」中勾選「將 F1、F2 等按鍵用作標準功能鍵」來改變
7. **自訂快速鍵**：可在「系統偏好設定」→「鍵盤」→「快速鍵」中自訂或修改系統快速鍵
8. **修飾鍵重新映射**：如果 `Alt` 和 `Win` 鍵位置不順手，可在「系統偏好設定」→「鍵盤」→「修飾鍵」中對調
9. **應用程式差異**：某些應用程式（特別是跨平台軟體）可能有自己的快速鍵配置，請參考該應用程式的說明文件
10. **系統版本差異**：視窗管理和系統功能快速鍵在不同版本的 macOS 中可能略有差異

### 實用小技巧

#### 通用技巧
1. **快速切換視窗**：使用 `Cmd + Tab` 切換應用程式時，按住 `Cmd` 不放，再按 `Q` 可關閉選取的應用程式
2. **Finder 中的拖曳操作**：
   - 按住 `Cmd` 拖曳 = 移動檔案
   - 按住 `Option` 拖曳 = 複製檔案
   - 按住 `Cmd + Option` 拖曳 = 建立替身
3. **截圖後的編輯**：截圖後會在螢幕右下角出現縮圖，點擊可立即編輯或分享
4. **Spotlight 計算器**：在 Spotlight (`Cmd + Space`) 中可直接輸入數學算式進行計算
5. **快速預覽**：在 Finder 選取檔案後按 `Space` 可快速預覽，支援圖片、影片、文件等多種格式
6. **強制結束應用程式**：如果 `Cmd + Q` 無法關閉應用程式，使用 `Cmd + Option + Esc` 開啟強制結束視窗
7. **多重選取檔案**：
   - 連續選取：點擊第一個檔案，按住 `Shift` 點擊最後一個檔案
   - 不連續選取：按住 `Cmd` 逐一點擊要選取的檔案

#### Windows 鍵盤用戶專屬技巧
8. **快速適應方法**：剛開始使用時，在心裡默念「Ctrl 換成 Win」，重複練習常用快捷鍵（複製、貼上、儲存）
9. **截圖快捷記憶**：記住「3 是全螢幕，4 是自選區域，5 是工具列」（`Cmd + Shift + 3/4/5`）
10. **善用 Cmd + ~**：在同一個應用程式的多個視窗間切換（Windows 鍵盤用 `Win + ~`）
11. **終端機操作保持不變**：在終端機中繼續使用 `Ctrl + C`（中斷）、`Ctrl + A`（行首）等，不需改成 `Cmd`
12. **F1-F12 建議設定**：如果你常用 F1-F12（開發者、遊戲玩家），建議在系統設定中將其設為標準功能鍵
13. **Home/End 替代方案**：養成使用 `Cmd + ←/→` 的習慣，這在所有應用程式中都更一致
14. **右鍵選單快速鍵**：Windows 鍵盤的「右鍵選單鍵」（Application Key）在 Mac 上無效，改用滑鼠右鍵或 `Ctrl + 點擊`
15. **數字鍵盤**：Windows 鍵盤的數字鍵盤可正常使用，`Num Lock` 預設開啟（Mac 沒有 Num Lock 指示燈）

---

## 🔗 相關資源

- [Mac 官方鍵盤快速鍵說明](https://support.apple.com/zh-tw/HT201236)
- [Karabiner-Elements 官網](https://karabiner-elements.pqrs.org/)
- [Mac 鍵盤符號對照表](https://support.apple.com/zh-tw/guide/mac-help/what-are-those-symbols-shown-in-menus-cpmh0011/mac)