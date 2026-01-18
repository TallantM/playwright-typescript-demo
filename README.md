# Playwright TypeScript Demo [![Run Tests](https://github.com/TallantM/playwright-typescript-demo/actions/workflows/playwright.yml/badge.svg)](https://github.com/TallantM/playwright-typescript-demo/actions/workflows/playwright.yml)

A client project demonstration of automated testing using Playwright with TypeScript, including reusable utilities and a GitHub Actions CI workflow.

## Prerequisites
- Node.js 18.0+
- Git
- VS Code with TypeScript extension

## Setup
1. Clone the repo: `git clone https://github.com/TallantM/playwright-demo.git`
2. Navigate to project: `cd playwright-demo`
3. Install dependencies: `npm ci`
4. Install Playwright browsers: `npx playwright install --with-deps`

## Running Tests Locally
`npx playwright test`

## CI/CD
GitHub Actions workflow in `.github/workflows/playwright.yml` runs tests on push/pull requests.