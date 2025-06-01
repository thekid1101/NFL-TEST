# Contributing to NFLTOS

Thank you for your interest in contributing! Please follow these guidelines to help us maintain a high-quality, collaborative project.

## Getting Started
1. Fork the repository and create a feature branch from `main`.
2. Install dependencies: `npm install`
3. Set up your development environment as described in the README.

## Code Style
- Use TypeScript for all backend and frontend code.
- Follow the code style enforced by ESLint and Prettier (run `npm run lint` and `npm run format`).
- Use 2 spaces for indentation.
- Write clear, descriptive variable and function names.

## Commit Messages
- Use [Conventional Commits](https://www.conventionalcommits.org/) (e.g., `feat: add new lineup optimizer`, `fix: correct salary cap bug`).
- Write concise, meaningful commit messages.

## Testing
- Add or update tests for new features and bug fixes.
- Ensure all tests pass before submitting a pull request.

## Pull Request Process
1. Ensure your branch is up to date with `main`.
2. Open a pull request with a clear description of your changes.
3. Reference related issues if applicable.
4. Wait for CI checks to pass and for code review.
5. Address any requested changes.

## Branching Strategy
- Use [GitHub Flow](https://guides.github.com/introduction/flow/):
  - Branch from `main` for all work.
  - Open a PR early for feedback.
  - Merge only after review and passing CI.

## Versioning
- We use [Semantic Versioning](https://semver.org/).
- Releases are managed via GitHub Releases and tags.

## Release Process
- Maintainers will tag releases and update the changelog.
- Major changes should be discussed in an issue before implementation.

Thank you for helping make NFLTOS better! 