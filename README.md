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
