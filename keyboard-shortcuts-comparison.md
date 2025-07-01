# Windows 鍵盤與 Mac 快速鍵對照表

當使用 Windows 鍵盤操作 Mac 系統時，以下是常用功能的快速鍵對照：

## 基本操作

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 複製 | `Ctrl + C` | `Cmd + C` | `⌘ + C` |
| 貼上 | `Ctrl + V` | `Cmd + V` | `⌘ + V` |
| 全選 | `Ctrl + A` | `Cmd + A` | `⌘ + A` |

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

## 視窗管理

| 功能 | Windows 鍵盤 (在 Windows) | Windows 鍵盤 (在 Mac) | Mac 鍵盤 (在 Mac) |
|------|---------------------------|----------------------|-------------------|
| 縮小所有視窗 | `Win + M` | `F11` 或 `Cmd + F3` | `F11` 或 `⌘ + F3` |
| 縮小當前視窗 | `Win + ↓` | `Cmd + M` | `⌘ + M` |

## 按鍵對應說明

### Windows 鍵盤在 Mac 上的按鍵對應：
- `Win` 鍵 → `Cmd` (⌘) 鍵
- `Alt` 鍵 → `Option` (⌥) 鍵
- `Ctrl` 鍵 → `Control` 鍵（在某些情況下仍為 `Ctrl`）

### 注意事項：
1. 在 Mac 上使用 Windows 鍵盤時，主要是將 `Ctrl` 替換為 `Cmd`
2. 終端機中的 `Ctrl + A` 和 `Ctrl + E` 在兩個系統中都可以使用
3. `Home` 和 `End` 鍵在 Mac 上的行為可能與 Windows 不同，建議使用 `Cmd + ←` 和 `Cmd + →`
4. 視窗管理功能在不同版本的 macOS 中可能略有差異