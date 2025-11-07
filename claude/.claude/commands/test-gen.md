---
description: Generate comprehensive tests for a file or function
args:
  - name: target
    description: File path or function name to test
    required: false
---

# Generate Tests for {{target}}

Generate comprehensive test coverage:

1. **Analyze the target:**
   - Understand the function/module purpose
   - Identify all input parameters and return types
   - Note any side effects or dependencies

2. **Create test cases for:**
   - Happy path (expected normal usage)
   - Edge cases (boundary conditions)
   - Error cases (invalid inputs, exceptions)
   - Integration points (if applicable)

3. **Test structure:**
   - Use descriptive test names that explain what is being tested
   - Arrange-Act-Assert pattern
   - One assertion per test when possible
   - Mock external dependencies

4. **Coverage areas:**
   - All public functions/methods
   - Error handling paths
   - Boundary conditions
   - State changes
   - Async operations (if applicable)

Generate the tests in the appropriate testing framework for this project.
