---
description: Perform comprehensive code review of recent changes
---

# Code Review

Perform a thorough code review of the most recent changes:

1. **Check git status:**
```bash
   git status
   git diff
```

2. **Review changes for:**
   - Code quality and readability
   - Potential bugs or edge cases
   - Error handling
   - Test coverage
   - Performance implications
   - Security vulnerabilities
   - Consistency with codebase patterns

3. **Specific checks:**
   - Are variable names descriptive?
   - Are functions focused and small?
   - Is error handling comprehensive?
   - Are there any hardcoded values that should be constants?
   - Are there any console.logs or debug statements to remove?
   - Is the code DRY (Don't Repeat Yourself)?

4. **Provide feedback:**
   - List any issues found with severity (Critical/High/Medium/Low)
   - Suggest specific improvements with code examples
   - Highlight what was done well

Be constructive and specific in your feedback.
