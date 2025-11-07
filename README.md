# My Dotfiles

Personal development configuration files.

## Claude Code Configuration

Global Claude Code settings and commands for consistent behavior across all projects.

### What's Included

- **settings.json**: MCP servers (Context7), permissions, environment variables
- **CLAUDE.md**: Global coding standards and preferences
- **commands/**: Reusable slash commands
  - `/review` - Comprehensive code review
  - `/test-gen` - Generate test cases
  - `/docs` - Generate documentation

### Installation

#### First Time Setup
```bash
# Clone this repository
cd ~
git clone git@github.com:yourusername/dotfiles.git

# Run installation script
cd dotfiles
./install.sh
```

#### Updating Configuration
```bash
# Pull latest changes
cd ~/dotfiles
git pull

# Changes are immediately available (symlink automatically updates)
```

#### On a New Computer
```bash
# Clone and install
cd ~
git clone git@github.com:yourusername/dotfiles.git
cd dotfiles
./install.sh

# Start using Claude Code
cd ~/any-project
claude
```

### Structure
```
dotfiles/
├── claude/
│   └── .claude/
│       ├── settings.json       # Global settings
│       ├── CLAUDE.md          # Global standards
│       └── commands/          # Global commands
│           ├── review.md
│           ├── test-gen.md
│           └── docs.md
├── install.sh                 # Installation script
└── README.md                  # This file
```

### Making Changes
```bash
# Edit configuration
vim ~/dotfiles/claude/.claude/CLAUDE.md

# Commit and push
cd ~/dotfiles
git add .
git commit -m "Update coding standards"
git push

# Pull on other computers
cd ~/dotfiles
git pull
```

### Project-Specific Configuration

Each project can have its own CLAUDE.md that imports global config:
```markdown
# Project Name

## Import Global Config
@~/.claude/CLAUDE.md

## Project-Specific Instructions
[Your project context here]
```

### Troubleshooting

**Symlink not working?**
```bash
# Remove broken symlink
rm ~/.claude

# Recreate
ln -sf ~/dotfiles/claude/.claude ~/.claude
```

**Can't see commands?**
```bash
# Verify symlink
ls -la ~/.claude

# Check it points to dotfiles
# Should show: .claude -> /Users/you/dotfiles/claude/.claude
```

**Context7 not loading?**
```bash
# Test MCP server
npx -y @upstash/context7-mcp@latest

# Check settings
cat ~/.claude/settings.json
```

## Included Configurations

### Vim
- **vimrc**: Vim editor configuration
- **vim/**: Plugins, colors, and additional Vim files

Location after install: `~/.vimrc`, `~/.vim/`

### VS Code
- **settings.json**: Editor settings
- **keybindings.json**: Keyboard shortcuts
- **extensions.txt**: List of installed extensions

Location after install: 
- Mac: `~/Library/Application Support/Code/User/`
- Linux: `~/.config/Code/User/`

Update extensions list: `./update-vscode-extensions.sh`

### Shell
- **zshrc**: Zsh shell configuration
- **bashrc**: Bash shell configuration

Location after install: `~/.zshrc`, `~/.bashrc`

### Git
- **gitconfig**: Git configuration (user, aliases, etc.)

Location after install: `~/.gitconfig`

### Claude Code
- **claude/.claude/**: Claude Code global configuration
  - settings.json, CLAUDE.md, commands/

Location after install: `~/.claude/`

## Updating Configurations

### After Making Changes
```bash
cd ~/dotfiles

# Stage changes
git add .

# Commit (examples)
git commit -m "Update vim colorscheme"
git commit -m "Add VS Code extensions"
git commit -m "Update Claude commands"

# Push to GitHub
git push
```

### Update VS Code Extensions List

After installing/removing VS Code extensions:
```bash
cd ~/dotfiles
./update-vscode-extensions.sh
git add vscode/extensions.txt
git commit -m "Update VS Code extensions"
git push
```

### Sync to Other Computers
```bash
cd ~/dotfiles
git pull

# Changes are immediately available via symlinks
# Restart terminal/VS Code to pick up changes
```

## Troubleshooting

### Vim not loading config
```bash
ls -la ~/.vimrc
# Should show: .vimrc -> /Users/you/dotfiles/vimrc
```

### VS Code not loading settings
```bash
# Mac
ls -la ~/Library/Application\ Support/Code/User/settings.json

# Linux
ls -la ~/.config/Code/User/settings.json

# Should show symlink to ~/dotfiles/vscode/settings.json
```

### Recreate all symlinks
```bash
cd ~/dotfiles
./install.sh
```
