# Contributing to Thesis Paper Typst ITB

Hello! Thank you for your interest in improving this project. Contributions to the document layout, Typst components, documentation, build tooling, and cross-platform support are welcome.

## Before you begin

Please use [GitHub Issues](https://github.com/Nayekah/thesis-paper-typst-itb/issues) to discuss substantial changes before investing significant time in an implementation. For vulnerabilities, follow the private process in the [Security Policy](SECURITY.md) instead of opening a public issue.

## Prerequisites

- [Git](https://git-scm.com/downloads)
- [Visual Studio Code](https://code.visualstudio.com/) with the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension, or the Tinymist CLI in `PATH`
- [Typstyle v0.15.2](https://github.com/typstyle-rs/typstyle/releases/tag/v0.15.2)
- GNU Make on Linux or macOS; Windows contributors can use `make.bat`

Typstyle can also be installed through Cargo:

```sh
cargo install typstyle --version 0.15.2 --locked
```

## Fork and clone the repository

Fork [Nayekah/thesis-paper-typst-itb](https://github.com/Nayekah/thesis-paper-typst-itb), then clone your fork:

```sh
git clone https://github.com/<your-github-username>/thesis-paper-typst-itb.git
cd thesis-paper-typst-itb
git remote add upstream https://github.com/Nayekah/thesis-paper-typst-itb.git
```

If you already have a clone, update your local `main` branch before starting:

```sh
git fetch upstream
git checkout main
git pull upstream main --rebase
```

## Create a working branch

Use a short, descriptive branch name:

```sh
git checkout -b fix/approval-page-spacing
```

Common prefixes include `fix/`, `feat/`, `docs/`, and `refactor/`.

## Understand the project structure

- `paper/` contains the Typst document, layout rules, front matter, chapters, appendices, references, and assets.
- `impl/` contains implementation source code discussed in the paper.
- `.vscode/` contains the recommended Tinymist workflow.
- `.github/workflows/` contains continuous-integration checks.
- `build/` contains generated output and must not be committed.

Keep document metadata in `paper/metadata.typ`, global layout rules in `paper/template.typ`, and written content in the relevant front-matter, chapter, or appendix file.

## Make your changes

Open the repository root in VS Code:

```sh
code .
```

Open `paper/main.typ`, then run **Typst Preview** from the Command Palette. Saving a `.typ` file formats it with Typstyle and refreshes the exported PDF according to the workspace settings.

Please follow these conventions:

- preserve CRLF line endings as configured by `.editorconfig` and `.gitattributes`;
- use two spaces for indentation in `.typ` files;
- keep reusable layout logic out of chapter content;
- add implementation source files to `impl/`, not `paper/`;
- use clear English for repository documentation and comments; and
- do not commit generated PDFs, local editor state, or personal thesis data.

## Format and verify

Format all Typst sources before committing.

On Windows:

```powershell
.\make.bat format
.\make.bat format-check
.\make.bat
```

On Linux or macOS:

```sh
make format
make format-check
make build
```

The following checks must pass:

1. Typstyle reports no formatting differences.
2. `paper/main.typ` compiles successfully.
3. The generated `build/main.pdf` has been visually inspected for layout regressions.
4. `git diff --check` reports no whitespace errors.

For layout changes, inspect at least the cover, approval page, front matter, affected chapters, references, and appendices. Test both one-supervisor and two-supervisor approval layouts when your change can affect either variant.

## Commit your changes

Stage only the files related to your contribution and use a concise, descriptive commit message:

```sh
git add <changed-files>
git commit -m "fix: align approval page signatures"
```

## Push and open a pull request

```sh
git push -u origin <your-branch-name>
```

Open a pull request against the `main` branch of [Nayekah/thesis-paper-typst-itb](https://github.com/Nayekah/thesis-paper-typst-itb). Include:

- a clear summary of the change;
- the reason for the change;
- the commands used for verification;
- screenshots or rendered-page comparisons for visual changes; and
- any compatibility considerations or known limitations.

Keep each pull request focused on one concern. Address review feedback with additional commits rather than rewriting unrelated files.

## Thank you

Every improvement helps make thesis writing more consistent and approachable for future contributors and students.
