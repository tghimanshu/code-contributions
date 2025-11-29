# Code Contributions Project

Welcome to the Code Contributions project! This repository serves as a playground for developers to practice making their first open-source contributions.

## Purpose

The main goal of this project is to help beginners understand the workflow of contributing to open-source projects on GitHub. By adding a "card" (a simple HTML file) with your information, you learn how to:
1.  Fork a repository.
2.  Clone it to your local machine.
3.  Create a branch.
4.  Make changes and commit them.
5.  Push changes to your fork.
6.  Open a Pull Request (PR).

## Directory Structure

*   `contributors/`: Contains individual HTML files for each contributor. This is where you will add your file.
*   `docs/`: Contains documentation and guides, including `CONTRIBUTING.md`.
*   `scripts/`: Contains JavaScript and Shell scripts that manage the loading and generation of contributor cards.
    *   `load-cards.js`: Dynamically loads contributor cards into the main page.
    *   `contributors.js`: A list of all contributor files (generated or updated manually).
    *   `generate-cards.sh`: A script to automatically update `contributors.js`.
*   `index.html`: The main entry point of the website.
*   `style.css`: The stylesheet for the project.

## Getting Started

To view the project locally:

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/Roshanjossey/code-contributions.git
    ```
2.  **Navigate to the project directory**:
    ```bash
    cd code-contributions
    ```
3.  **Open `index.html` in your browser**:
    You can double-click the file in your file explorer, or use a simple HTTP server (e.g., `python3 -m http.server` and go to `localhost:8000`).

## How to Contribute

We have a detailed guide to help you get started.

👉 **[Read the Contribution Guide](docs/CONTRIBUTING.md)**

### Quick Summary

1.  Create a file named `<your-username>.html` in the `contributors/` folder.
2.  Add your details using the provided HTML template.
3.  Add your filename to `scripts/contributors.js`.
4.  Submit a Pull Request!

## Documentation

The codebase is documented to help you understand how the dynamic loading of cards works.
*   **JavaScript**: documented using JSDoc.
*   **Shell Scripts**: documented with header comments and inline explanations.

## Translations

This project is available in multiple languages:
*   [Deutsch](docs/translations/de/README.de.md)
*   [Português (Brasil)](docs/translations/pt_br/README.pt_br.md)
*   [日本語](docs/translations/ja/README.ja.md)
*   [Bahasa Indonesia](docs/translations/id/README.id.md)
*   [中文](docs/translations/cn/README.cn.md)
*   [Español](docs/translations/es/README.es.md)
