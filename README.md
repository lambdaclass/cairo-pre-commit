# cairo-pre-commit

## Introduction

This repository hosts pre-commit hooks for Cairo (StarkNet programming language) projects. Pre-commit hooks help maintain code quality by automatically running specified tasks such as formatting code, running tests, and checking documentation formatting before a commit is made.

## Dependencies

- [`scarb`](https://docs.swmansion.com/scarb/download.html): Cairo's build tool for formatting and testing.
- [`npm`](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm): A package manager for JavaScript, which comes bundled with Node.js.
- `Prettier`: An opinionated code formatter. Install globally using the following command:
  ```bash
  npm install --global prettier
  ```

## Installation

1. Clone or download this repository to your local machine.
2. Make the pre-commit script executable by running the following command:
   ```bash
   chmod +x pre-commit.sh
   ```

## Configuration

1. Navigate to your Cairo project repository on your local machine.
2. Go to the `.git/hooks` directory.
3. Create a file named `pre-commit` (without any file extension).
4. Inside the `pre-commit` file, add the following line to execute the `pre-commit.sh` script:
   ```bash
   exec /path/to/pre-commit.sh
   ```

## Usage

The pre-commit hooks will automatically run the following commands when a commit is attempted:

- `scarb fmt`: Formats the Cairo code.
- `scarb test`: Runs tests in the Cairo project.
- `npx prettier --check README.md`: Checks the formatting of the README file.

## Troubleshooting

If you encounter any issues while setting up or using the pre-commit hooks, check the following:

- Ensure that `scarb`, `npm`, and `Prettier` are installed and accessible from the command line.
- Verify that the `pre-commit` file is correctly set up in the `.git/hooks` directory and that the path to `pre-commit.sh` is correct.

## Contributing

We welcome contributions to improve the pre-commit hooks. Feel free to submit issues, propose new features, or create pull requests.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.
