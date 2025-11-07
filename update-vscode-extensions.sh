#!/bin/bash

echo "📦 Updating VS Code extensions list..."
code --list-extensions > ~/dotfiles/vscode/extensions.txt
echo "✅ Extensions list updated!"
echo ""
echo "Extensions saved to: ~/dotfiles/vscode/extensions.txt"
echo "Commit with: cd ~/dotfiles && git add . && git commit -m 'Update VS Code extensions'"
