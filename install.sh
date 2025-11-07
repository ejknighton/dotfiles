#!/bin/bash

# Claude Code Configuration Installer
echo "Installing Claude Code configuration..."

# Backup existing config if it exists
if [ -d ~/.claude ]; then
    echo "Backing up existing ~/.claude to ~/.claude.backup"
    mv ~/.claude ~/.claude.backup
fi

# Create symlink
ln -sf ~/dotfiles/claude/.claude ~/.claude

echo "✅ Claude Code configuration installed!"
echo "Location: ~/.claude -> ~/dotfiles/claude/.claude"
echo ""
echo "Verify installation:"
echo "  ls -la ~/.claude"
echo ""
echo "Test in any project:"
echo "  cd ~/your-project && claude"
