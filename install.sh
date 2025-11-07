#!/bin/bash

echo "🚀 Installing dotfiles..."

# Backup function
backup() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
        echo "  📦 Backing up existing $1 to $1.backup"
        mv "$1" "$1.backup"
    fi
}

# Symlink function
link() {
    local source="$1"
    local target="$2"
    
    if [ -e "$source" ]; then
        backup "$target"
        ln -sf "$source" "$target"
        echo "  ✅ Linked $target"
    else
        echo "  ⚠️  Skipped $target (source not found)"
    fi
}

# === VIM ===
echo "📝 Setting up Vim..."
link ~/dotfiles/vimrc ~/.vimrc
link ~/dotfiles/vim ~/.vim

# === VS CODE ===
echo "💻 Setting up VS Code..."

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    VSCODE_USER_DIR=~/Library/Application\ Support/Code/User
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    VSCODE_USER_DIR=~/.config/Code/User
else
    echo "  ⚠️  Unknown OS for VS Code setup"
    VSCODE_USER_DIR=""
fi

if [ -n "$VSCODE_USER_DIR" ]; then
    mkdir -p "$VSCODE_USER_DIR"
    link ~/dotfiles/vscode/settings.json "$VSCODE_USER_DIR/settings.json"
    link ~/dotfiles/vscode/keybindings.json "$VSCODE_USER_DIR/keybindings.json"
    
    # Install extensions
    if [ -f ~/dotfiles/vscode/extensions.txt ]; then
        echo "  📦 Installing VS Code extensions..."
        while read extension; do
            code --install-extension "$extension" --force
        done < ~/dotfiles/vscode/extensions.txt
    fi
fi

# === SHELL ===
echo "🐚 Setting up Shell..."
link ~/dotfiles/zshrc ~/.zshrc
link ~/dotfiles/bashrc ~/.bashrc

# === GIT ===
echo "📋 Setting up Git..."
link ~/dotfiles/gitconfig ~/.gitconfig

# === CLAUDE CODE ===
echo "🤖 Setting up Claude Code..."
link ~/dotfiles/claude/.claude ~/.claude

echo ""
echo "✨ Installation complete!"
echo ""
echo "Next steps:"
echo "  - Restart your terminal (or run: source ~/.zshrc)"
echo "  - Restart VS Code"
echo "  - Test Claude Code: cd ~/any-project && claude"
echo ""
echo "Verify symlinks:"
echo "  ls -la ~ | grep '\->'"
