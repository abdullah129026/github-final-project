# Contributing to Simple Interest Calculator

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome.

## Getting Started

We welcome contributions from everyone. Before you start, please take a moment to read this guide to understand our process and standards.

## Types of Contributions

### Bug Reports

If you discover a bug in the calculator, please open an issue with the following information:

- A clear, descriptive title
- A detailed description of the bug
- Steps to reproduce the issue (input values, expected vs actual output)
- Expected behavior
- Actual behavior
- Your environment (OS, Bash version, bc availability, etc.)
- Any relevant error messages or terminal output

### Bug Fixes

When submitting a bug fix for the calculator:

- Include a clear description of the problem being fixed
- Reference the issue number if applicable
- Add test cases that verify the fix works correctly
- Update documentation if the fix changes expected behavior
- Follow the shell script coding standards outlined below

### Documentation Improvements

Documentation is crucial for the calculator project. You can help by:

- Fixing typos or unclear explanations
- Adding more usage examples
- Improving the README or other documentation files
- Clarifying complex formulas or calculations
- Adding helpful comments to the shell script
- Creating tutorials or guides for advanced usage

### Feature Enhancements

When proposing a new feature for the calculator:

- Open an issue first to discuss the idea with maintainers
- Explain the use case and benefits (e.g., compound interest, tax calculations)
- Be open to feedback and discussion
- Provide examples of how the feature would work
- Consider backward compatibility

### Ideas and Suggestions

Have an idea for the calculator? We'd love to hear it! Open an issue to discuss your thoughts and suggestions.

## Development Process

### 1. Fork and Clone

- Fork the repository on GitHub
- Clone your fork locally: `git clone https://github.com/your-username/Calculator.git`
- Add the upstream repository: `git remote add upstream https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub.git`

### 2. Create a Branch

- Create a new branch for your work: `git checkout -b feature/your-feature-name`
- Use descriptive branch names that indicate the type of change
- Examples: `fix/rounding-issue`, `docs/update-formula`, `feature/compound-interest`

### 3. Make Your Changes

- Write clear, maintainable Bash code
- Follow the shell script coding standards
- Add comments explaining complex logic
- Test your changes thoroughly with various inputs
- Ensure the script remains portable across different systems

### 4. Test Your Changes

- Run the calculator script with various inputs
- Test edge cases and boundary conditions
- Verify input validation works correctly
- Test on different systems if possible (Linux, macOS, WSL)
- Ensure the bc calculations are accurate

### 5. Push and Submit a Pull Request

- Push your branch to your fork
- Submit a pull request to the main repository
- Provide a clear description of your changes
- Reference any related issues
- Be responsive to feedback and review comments

## Coding Standards

- Follow existing Bash script style and conventions
- Write clear, readable code with meaningful variable names
- Add comments for complex logic and calculations
- Keep functions focused and modular
- Avoid unnecessary dependencies (stick with Bash built-ins and standard tools like bc)
- Use proper quoting and escaping for variables
- Follow the existing error handling patterns
- Test your code thoroughly with various inputs

### Bash Style Guide

- Use 4 spaces for indentation (no tabs)
- Use lowercase for variable names with underscores: `my_variable`
- Use UPPERCASE for constants: `CONSTANT_VALUE`
- Use meaningful function names in snake_case
- Add function comments explaining purpose and parameters
- Always quote variables: `"$variable"` not `$variable`
- Use [[ ]] for conditionals instead of [ ]
- Use local variables in functions to avoid polluting global scope

## Commit Message Guidelines

- Use clear, concise commit messages
- Start with a verb (Add, Fix, Update, Remove, Refactor, Improve, etc.)
- Keep the first line under 72 characters
- Provide additional details in the body if needed
- Reference issue numbers: `Fixes #123` or `Related to #456`
- Describe the "why" not just the "what"

### Example Commit Messages

```
Fix precision issue in simple interest calculation

Resolves: #42
- Updated bc precision to 2 decimal places
- Added test cases for edge cases with large numbers
- Improved error handling for invalid bc operations
```

```
Add support for compound interest calculation

Improves: #15
- Implemented compound interest formula
- Added interactive prompt for compound frequency
- Updated documentation with examples
- Maintained backward compatibility
```

```
Update documentation with more usage examples

- Added examples for various investment scenarios
- Clarified formula explanations
- Added troubleshooting section
```

## Code Review Process

All submissions, including those from project members, require review. We use pull requests for this purpose. Review guidelines include:

- Reviewers will provide constructive feedback
- Changes may be requested before merging
- Be respectful and professional in all discussions
- Respond to feedback in a timely manner

## Questions or Need Help?

If you have questions or need clarification:

- Check existing issues and documentation
- Open a new issue with your question
- Be as specific as possible in your question
- Be patient while waiting for a response

## Code of Conduct

Please note that this project is governed by a Code of Conduct. By participating, you are expected to uphold this code. Please see CODE_OF_CONDUCT.md for more information.

## License

By contributing to this project, you agree that your contributions will be licensed under its LICENSE (Apache License 2.0).

## Thank You!

Thank you for considering contributing to this project. Your effort and contributions are greatly appreciated!
