#!/bin/bash

################################################################################
# Claude Code 必備工具自動安裝腳本 for macOS
# 作者: Claude
# 用途: 一鍵安裝 Claude Code 及其相關開發工具
################################################################################

# 顏色定義
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 輸出美化函數
print_header() {
    echo -e "\n${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${BLUE}  $1${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${YELLOW}ℹ${NC} $1"
}

print_step() {
    echo -e "${BLUE}▶${NC} $1"
}

# 檢查是否為 macOS
check_macos() {
    if [[ "$OSTYPE" != "darwin"* ]]; then
        print_error "此腳本僅支援 macOS 系統"
        exit 1
    fi
    print_success "作業系統檢查通過 (macOS)"
}

# 檢查 macOS 版本
check_macos_version() {
    local version=$(sw_vers -productVersion)
    local major_version=$(echo $version | cut -d '.' -f 1)

    if [ "$major_version" -lt 13 ]; then
        print_error "Claude Code 需要 macOS 13.0 或更高版本"
        print_info "您的版本: $version"
        exit 1
    fi
    print_success "macOS 版本檢查通過 (版本: $version)"
}

# 檢查並安裝 Xcode Command Line Tools
install_xcode_tools() {
    print_step "檢查 Xcode Command Line Tools..."

    if xcode-select -p &> /dev/null; then
        print_success "Xcode Command Line Tools 已安裝"
    else
        print_info "正在安裝 Xcode Command Line Tools（這可能需要幾分鐘）..."
        xcode-select --install

        # 等待用戶完成安裝
        print_info "請在彈出的視窗中完成安裝，然後按任意鍵繼續..."
        read -n 1 -s

        if xcode-select -p &> /dev/null; then
            print_success "Xcode Command Line Tools 安裝成功"
        else
            print_error "Xcode Command Line Tools 安裝失敗"
            exit 1
        fi
    fi
}

# 檢查並安裝 Homebrew
install_homebrew() {
    print_step "檢查 Homebrew..."

    if command -v brew &> /dev/null; then
        print_success "Homebrew 已安裝"
        print_info "更新 Homebrew..."
        brew update
    else
        print_info "正在安裝 Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

        # 檢查是否為 Apple Silicon (M1/M2/M3)
        if [[ $(uname -m) == "arm64" ]]; then
            print_info "偵測到 Apple Silicon，正在設定環境變數..."
            echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
            eval "$(/opt/homebrew/bin/brew shellenv)"
        fi

        if command -v brew &> /dev/null; then
            print_success "Homebrew 安裝成功"
        else
            print_error "Homebrew 安裝失敗"
            exit 1
        fi
    fi
}

# 安裝 Claude Code
install_claude_code() {
    print_step "安裝 Claude Code..."

    if command -v claude &> /dev/null; then
        print_success "Claude Code 已安裝"
        print_info "當前版本: $(claude --version 2>/dev/null || echo '版本未知')"

        read -p "是否要更新到最新版本？(y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            print_info "正在更新 Claude Code..."
            curl -fsSL https://claude.ai/install.sh | bash
            print_success "Claude Code 更新完成"
        fi
    else
        print_info "正在安裝 Claude Code（推薦使用原生安裝器）..."
        curl -fsSL https://claude.ai/install.sh | bash

        # 重新載入 shell 環境
        if [[ -f ~/.zshrc ]]; then
            source ~/.zshrc 2>/dev/null || true
        elif [[ -f ~/.bash_profile ]]; then
            source ~/.bash_profile 2>/dev/null || true
        fi

        if command -v claude &> /dev/null; then
            print_success "Claude Code 安裝成功"
        else
            print_error "Claude Code 安裝失敗，請檢查錯誤訊息"
            print_info "您也可以嘗試使用 Homebrew 安裝: brew install --cask claude-code"
            exit 1
        fi
    fi
}

# 安裝必備工具
install_essential_tools() {
    print_step "安裝必備開發工具..."

    local tools=(
        "git:版本控制系統"
        "ripgrep:超快速搜尋工具（Claude Code 使用）"
        "jq:JSON 處理工具"
    )

    for tool_info in "${tools[@]}"; do
        local tool=$(echo $tool_info | cut -d ':' -f 1)
        local desc=$(echo $tool_info | cut -d ':' -f 2)

        if command -v $tool &> /dev/null; then
            print_success "$tool 已安裝 - $desc"
        else
            print_info "正在安裝 $tool..."
            brew install $tool
            if [ $? -eq 0 ]; then
                print_success "$tool 安裝成功"
            else
                print_error "$tool 安裝失敗"
            fi
        fi
    done
}

# 安裝推薦的增強工具
install_recommended_tools() {
    print_header "安裝推薦的增強工具"

    print_info "這些工具可以大幅提升您的開發體驗"
    read -p "是否安裝推薦工具？(y/n) " -n 1 -r
    echo

    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_info "跳過推薦工具安裝"
        return
    fi

    local tools=(
        "bat:更好的 cat 替代品（語法高亮）"
        "fd:更快的 find 替代品"
        "fzf:模糊搜尋工具"
        "tree:目錄樹狀顯示"
        "gh:GitHub CLI 工具"
        "exa:更好的 ls 替代品"
        "tldr:簡化的 man pages"
    )

    for tool_info in "${tools[@]}"; do
        local tool=$(echo $tool_info | cut -d ':' -f 1)
        local desc=$(echo $tool_info | cut -d ':' -f 2)

        if command -v $tool &> /dev/null; then
            print_success "$tool 已安裝 - $desc"
        else
            print_info "正在安裝 $tool - $desc..."
            brew install $tool
            if [ $? -eq 0 ]; then
                print_success "$tool 安裝成功"
            else
                print_error "$tool 安裝失敗（可忽略）"
            fi
        fi
    done
}

# 安裝 Oh-My-Zsh
install_oh_my_zsh() {
    print_header "安裝 Oh-My-Zsh"

    if [ -d ~/.oh-my-zsh ]; then
        print_success "Oh-My-Zsh 已安裝"
        return
    fi

    print_info "Oh-My-Zsh 可以美化您的終端並提供更多功能"
    read -p "是否安裝 Oh-My-Zsh？(y/n) " -n 1 -r
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        print_info "正在安裝 Oh-My-Zsh..."
        RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

        if [ -d ~/.oh-my-zsh ]; then
            print_success "Oh-My-Zsh 安裝成功"
            print_info "請稍後執行 'source ~/.zshrc' 來啟用"
        else
            print_error "Oh-My-Zsh 安裝失敗（可忽略）"
        fi
    fi
}

# 設定 Git（如果尚未設定）
configure_git() {
    print_header "Git 設定"

    if git config --global user.name &> /dev/null && git config --global user.email &> /dev/null; then
        print_success "Git 已設定完成"
        print_info "使用者: $(git config --global user.name)"
        print_info "郵箱: $(git config --global user.email)"
        return
    fi

    print_info "檢測到 Git 尚未設定使用者資訊"
    read -p "是否現在設定 Git？(y/n) " -n 1 -r
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "請輸入您的 Git 使用者名稱: " git_name
        read -p "請輸入您的 Git 郵箱: " git_email

        git config --global user.name "$git_name"
        git config --global user.email "$git_email"

        print_success "Git 設定完成"
    fi
}

# 驗證安裝
verify_installation() {
    print_header "驗證安裝"

    print_step "執行 Claude Code 診斷..."
    if command -v claude &> /dev/null; then
        claude doctor || true
        print_success "驗證完成"
    else
        print_error "無法執行 claude doctor，請重新啟動終端後再試"
    fi
}

# 顯示後續步驟
show_next_steps() {
    print_header "安裝完成！"

    echo -e "${GREEN}恭喜！Claude Code 及相關工具已安裝完成。${NC}\n"

    echo -e "${BLUE}後續步驟：${NC}"
    echo -e "  ${YELLOW}1.${NC} 重新啟動終端或執行: ${GREEN}source ~/.zshrc${NC}"
    echo -e "  ${YELLOW}2.${NC} 登入 Claude Code: ${GREEN}claude auth login${NC}"
    echo -e "  ${YELLOW}3.${NC} 進入您的專案目錄: ${GREEN}cd your-project${NC}"
    echo -e "  ${YELLOW}4.${NC} 啟動 Claude Code: ${GREEN}claude${NC}"

    echo -e "\n${BLUE}有用的命令：${NC}"
    echo -e "  ${GREEN}claude --help${NC}        - 查看幫助"
    echo -e "  ${GREEN}claude doctor${NC}        - 檢查安裝狀態"
    echo -e "  ${GREEN}claude update${NC}        - 更新到最新版本"

    echo -e "\n${BLUE}系統需求提醒：${NC}"
    echo -e "  • macOS 13.0 或更高版本"
    echo -e "  • 4 GB+ RAM"
    echo -e "  • 需要 Claude Pro、Max、Teams 或 Enterprise 訂閱"

    echo -e "\n${BLUE}更多資源：${NC}"
    echo -e "  • 官方文檔: ${GREEN}https://code.claude.com/docs${NC}"
    echo -e "  • GitHub: ${GREEN}https://github.com/anthropics/claude-code${NC}"

    echo ""
}

# 主函數
main() {
    print_header "Claude Code 必備工具自動安裝程式"

    echo -e "${BLUE}此腳本將安裝：${NC}"
    echo "  • Xcode Command Line Tools"
    echo "  • Homebrew 套件管理器"
    echo "  • Claude Code (原生安裝器)"
    echo "  • 必備工具: Git, ripgrep, jq"
    echo "  • 推薦工具: bat, fd, fzf, tree, gh, exa, tldr (可選)"
    echo "  • Oh-My-Zsh (可選)"
    echo ""

    read -p "是否繼續安裝？(y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_info "安裝已取消"
        exit 0
    fi

    # 執行安裝流程
    print_header "系統檢查"
    check_macos
    check_macos_version

    print_header "安裝核心工具"
    install_xcode_tools
    install_homebrew
    install_claude_code
    install_essential_tools

    # 可選安裝
    install_recommended_tools
    install_oh_my_zsh
    configure_git

    # 驗證與完成
    verify_installation
    show_next_steps

    print_success "全部完成！請重新啟動終端以確保所有變更生效。"
}

# 執行主程式
main
