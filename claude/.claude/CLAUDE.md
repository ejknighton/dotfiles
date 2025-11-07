# Global Coding Standards

## General Principles
- Write clear, self-documenting code
- Prefer explicit over implicit
- Keep functions small and focused
- Test critical functionality

## Code Style
- Use descriptive variable names (avoid single letters except in loops)
- Use 2-space indentation for JS/TS/JSON, 4-space for Python
- Max line length: 100 characters
- Use single quotes for strings in JS/TS, double quotes in Python

## Git Workflow
- Create feature branches from main: `git checkout -b feature/description`
- Use conventional commits:
  - `feat:` - New features
  - `fix:` - Bug fixes
  - `docs:` - Documentation changes
  - `refactor:` - Code refactoring
  - `test:` - Test additions/changes
  - `chore:` - Maintenance tasks
- Example: `git commit -m "feat: add user authentication"`
- Always pull before pushing: `git pull origin main`

## Error Handling
- Always handle errors explicitly
- Use try-catch blocks for async operations
- Log errors with context
- Never swallow errors silently

## Testing
- Write tests for new features
- Test edge cases and error conditions
- Keep tests fast and independent
- Use descriptive test names

## Documentation
- Document complex logic with comments
- Keep README files up to date
- Document API endpoints and parameters
- Include usage examples

## Available Tools
- Context7 MCP: Use for fetching up-to-date library documentation
  - When working with external libraries, search for docs first
  - Example: "Get Next.js App Router documentation"
