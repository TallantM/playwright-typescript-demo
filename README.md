# Playwright TypeScript Demo [![Run Tests](https://github.com/TallantM/typescript-framework-demo/actions/workflows/ci.yml/badge.svg)](https://github.com/TallantM/typescript-framework-demo/actions/workflows/ci.yml)

A client project demonstration of automated testing using Playwright with TypeScript, featuring reusable utilities, layered test suites (unit, integration, and end-to-end), and a GitHub Actions CI workflow for scalable quality assurance. 

## Prerequisites
- Node.js 18.0+
- Git
- Visual Studio Code with TypeScript extension
- Docker (for containerized testing)

Verify prerequisites:
- Node.js: `node --version` (should output 18.0 or higher)
- Git: `git --version`
- Docker: `docker --version` (ensure Docker is running with `docker info`)

## Setup
1. Clone the repo: `git clone https://github.com/TallantM/typescript-framework-demo.git`
2. Navigate to project: `cd typescript-framework-demo`
3. Install dependencies: `npm ci`
4. Install Playwright browsers: `npx playwright install --with-deps`

For Docker setup (if not installed):
- Install Docker from https://docs.docker.com/get-docker/
- Ensure the Docker daemon is running: `docker info`

## Folder Structure
```text
typescript-framework-demo/
├── .github/
│   └── workflows/
│       └── playwright.yml  # GitHub Actions CI workflow
├── tests/
│   ├── e2e/
│   │   └── example.spec.ts     # Example end-to-end test file
│   ├── integration/
│   │   └── loginPageIntegration.test.ts  # Example integration test file
│   └── unit/
│       └── loginPageUnit.test.ts  # Example unit test file
├── utilities/
│   └── pageObjects/
│       └── LoginPage.ts    # Reusable page object utility
├── .gitignore              # Ignores node_modules and Playwright artifacts
├── Dockerfile              # Containerized build for testing
├── package.json            # Dependencies and scripts
├── playwright.config.ts    # Playwright configuration
├── README.md               # This documentation              
```

## Testing Overview
This repository demonstrates layered testing to highlight automated testing skills:
- **Unit Tests**: Isolated verification of utilities (e.g., `loginPageUnit.test.ts`) using Vitest for mocking dependencies, ensuring fast and deterministic checks without browser overhead.
- **Integration Tests**: Validation of component interactions (e.g., `loginPageIntegration.test.ts`) in a simulated browser context.
- **E2E Tests**: Full browser automation (e.g., `example.spec.ts`) for login scenarios on saucedemo.com, showcasing Playwright's capabilities.

## Running Tests Locally
For rapid development, run tests directly on your host (requires host browser installation):
npx playwright install --with-deps
npx playwright test

For consistency with CI, use Docker (recommended before pushing):
docker build -t typescript-framework-demo .
docker run typescript-framework-demo

## CI/CD
GitHub Actions workflow in `.github/workflows/playwright.yml` builds the Docker image and runs tests exclusively in the container on push/pull requests, ensuring environmental consistency across machines.

## Troubleshooting
- **Browser Launch Failures**: Ensure `npx playwright install --with-deps` has run successfully. If using Docker, verify all dependencies are included in the Dockerfile.
- **Dependency Errors**: Run `npm ci` to refresh packages. For Docker builds, check for network issues during library installations.
- **Test Timeouts**: Increase timeouts in `playwright.config.ts` if network latency affects external sites like saucedemo.com.
- **CI Failures**: Review workflow logs for specific errors; caching may need invalidation if dependencies change.

## Contributing
Contributions are welcome to enhance the demo. Please fork the repository, create a feature branch, and submit a pull request with clear descriptions of changes.
