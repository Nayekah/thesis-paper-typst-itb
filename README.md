<p align="center">
  <img src="./paper/assets/ganesha.jpg" width="132" alt="ITB Ganesha emblem">
</p>

<h1 align="center">Thesis Paper Typst ITB</h1>

<p align="center">
  A modern, modular ITB Informatics final-project template with live Typst preview.
</p>

<p align="center">
  <a href="#quick-start">Quick start</a> ·
  <a href="#features">Features</a> ·
  <a href="#project-structure">Structure</a> ·
  <a href="#workflow">Workflow</a> ·
  <a href="#contributing">Contributing</a>
</p>

<p align="center">
  <a href="https://github.com/typst/typst/releases/tag/v0.15.1">
    <img src="https://img.shields.io/badge/Typst-v0.15.1-239DAD?logo=typst&logoColor=white" alt="Typst v0.15.1">
  </a>
  <a href="https://github.com/typstyle-rs/typstyle/releases/tag/v0.15.2">
    <img src="https://img.shields.io/badge/Typstyle-v0.15.2-6C5CE7" alt="Typstyle v0.15.2">
  </a>
  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/license-Apache--2.0-3DA639" alt="Apache License 2.0">
  </a>
</p>

> [!NOTE]
> This repository combines a Typst-native writing workflow with conventions from established ITB final-project templates.

The template keeps the paper source separate from implementation code. All document sources live in `paper/`, while programs discussed in the paper belong in `impl/`. The compiled document is written to `build/main.pdf`.

## Why this template?

Writing a final-project report should be about the content, not repeatedly fixing margins, numbering, or the table of contents. This project provides one consistent workflow from writing to PDF:

- live preview and automatic PDF export through Tinymist;
- consistent Typst source formatting through Typstyle;
- modular chapters, front matter, and appendices;
- clear separation between the paper and implementation code; and
- automated formatting checks and compilation through GitHub Actions.

## Features

- [x] IF4091 proposal cover
- [x] Approval page for one or two supervisors
- [x] Declaration of originality
- [x] Indonesian and English abstracts
- [x] Foreword
- [x] Tables of contents, figures, tables, algorithms, and code listings
- [x] Lists of abbreviations and symbols
- [x] Numbering for chapters, sections, figures, tables, equations, and appendices
- [x] BibTeX/BibLaTeX bibliography
- [x] Syntax-highlighted code blocks with line numbers
- [x] Live preview and PDF export from VS Code
- [x] Automatic formatting with Typstyle
- [x] Consistent CRLF line endings
- [x] Automated compilation with GitHub Actions

## Quick start

### 1. Clone the repository

```sh
git clone https://github.com/Nayekah/thesis-paper-typst-itb.git
cd thesis-paper-typst-itb
```

### 2. Open it in VS Code

```sh
code .
```

Accept the recommendation to install the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension, then open `paper/main.typ`.

### 3. Start the preview

<img width="856" height="621" alt="Screenshot 2026-10-20 174918" src="https://github.com/user-attachments/assets/740333f4-115d-41f8-89b7-fae6bc2150d1" />

Open the Command Palette with `Ctrl+Shift+P`, then run **Typst Preview**. Tinymist uses `tinymist.lock` to recognize `paper/main.typ` as the project entry point.

> [!TIP]
> Save with `Ctrl+S` to format the source and automatically export the latest PDF to `build/main.pdf`.

## Build from the terminal

### Windows

```powershell
.\make.bat
```

The script first uses Tinymist from `PATH`. If it is unavailable, the script looks for the binary bundled with the VS Code extension.

### Linux and macOS

Make sure `tinymist` is available in `PATH`, then run:

```sh
make build
```

To recompile whenever a source file is saved:

```sh
make watch
```

### Direct commands

With the Tinymist CLI:

```sh
tinymist compile --root . paper/main.typ build/main.pdf
```

With the Typst CLI:

```sh
typst compile --root . paper/main.typ build/main.pdf
```

## Project structure

```text
.
|-- impl/                       # final-project implementation code
|   `-- binary-search.py
|-- paper/                      # document sources
|   |-- main.typ                # compilation entry point
|   |-- metadata.typ            # document identity and metadata
|   |-- template.typ            # layout rules
|   |-- references.bib          # reference database
|   |-- frontmatter/            # abstracts, foreword, and terminology lists
|   |-- chapters/               # Chapter I and subsequent chapters
|   |-- appendices/             # appendices
|   |-- algorithms/             # algorithm components
|   |-- components/             # reusable tables and components
|   `-- assets/                 # document images and assets
|-- .vscode/                    # Tinymist settings, tasks, and extension recommendations
|-- .github/workflows/          # automated checks and builds
|-- build/                      # compiled PDF; ignored by Git
|-- Makefile
|-- make.bat
`-- tinymist.lock
```

## Workflow

### Update the document metadata

Edit `paper/metadata.typ` to change:

- the Indonesian and English titles;
- the student's name and ID number;
- the study program, school, and institution;
- the document date;
- supervisor names and employee ID numbers; and
- keywords.

Set `supervisors` to one or two entries. The template automatically selects the corresponding approval-page layout.

### Write the paper

- Keep front matter in `paper/frontmatter/`.
- Write the main content in `paper/chapters/`.
- Store appendices in `paper/appendices/`.
- Add images to `paper/assets/`.
- Add implementation code to `impl/`.
- Add references to `paper/references.bib`, then cite them with `@citation-key`.

> [!IMPORTANT]
> Use `paper/template.typ` only for global layout rules. Keep document identity in `paper/metadata.typ`, and write content in the appropriate front-matter, chapter, or appendix file.

## Document format

The main layout follows the formatting baseline from `ProposalTA-STI`:

| Element | Configuration |
| --- | --- |
| Paper size | A4 |
| Inner margin | 4 cm |
| Outer margin | 3 cm |
| Top and bottom margins | 3 cm |
| Main typeface | Times New Roman, 12 pt |
| Paragraphs | Justified, 1.5 line spacing |
| Front matter | Lowercase Roman numerals |
| Main matter | Arabic numerals |
| Chapters and appendices | Roman and alphabetical numbering |

The cover and approval pages support proposal layouts with either one or two supervisors.

## Formatting

Tinymist uses [Typstyle](https://github.com/typstyle-rs/typstyle) to format `.typ` files. Install the Typstyle CLI from its [official release](https://github.com/typstyle-rs/typstyle/releases/tag/v0.15.2), or use Cargo:

```sh
cargo install typstyle --version 0.15.2 --locked
```

Format all Typst sources:

```sh
make format
```

Check formatting without changing files:

```sh
make format-check
```

On Windows:

```powershell
.\make.bat format
.\make.bat format-check
```

All text files use CRLF line endings. This policy is enforced through `.editorconfig`, `.gitattributes`, the Tinymist configuration, and Typstyle's `--line-ending=crlf` option.

## Automation

The `.github/workflows/build.yml` workflow runs on every push and pull request to:

1. install Typstyle;
2. check Typst source formatting;
3. compile `paper/main.typ`; and
4. upload `build/main.pdf` as the `thesis-paper` artifact.

## Troubleshooting

<details>
<summary><strong>The Tinymist preview is blank</strong></summary>

Make sure VS Code was opened from the repository root, then open `paper/main.typ`. Restart **Typst Preview**, or run **Developer: Reload Window** if an old preview session is still active.

</details>

<details>
<summary><strong>Tinymist is not found during a build</strong></summary>

Install the Tinymist extension in VS Code or add the Tinymist CLI to `PATH`. On Windows, `make.bat` can also use the binary from the extension installation.

</details>

<details>
<summary><strong>Typstyle is not found</strong></summary>

Install Typstyle from its official release page or through Cargo, then make sure the `typstyle` command is available in a new terminal session.

</details>

## Contributing

Contributions that improve the layout, documentation, platform compatibility, or Typst components are welcome.

Read the full [contribution guide](.github/CONTRIBUTING.md) before preparing a change. Report suspected vulnerabilities privately according to the [security policy](.github/SECURITY.md).

1. Fork this repository.
2. Create a branch for your changes.
3. Run `make format-check` and `make build`.
4. Open a pull request with a summary of the changes and verification results.

## Credits

This template builds on ideas and conventions from these existing projects:

- [if-itb-latex](https://github.com/petrabarus/if-itb-latex) by Petra Novandi Barus and contributors, for the modular thesis structure;
- [ProposalTA-STI](https://github.com/baskara-id/ProposalTA-STI) by Ir. I Gusti Bagus Baskara Nugraha, S.T., M.T., Ph.D., for sample content and the core formatting baseline; and
- [Template Proposal dan TA IF ITB Typst](https://github.com/DaDecky/Template-Proposal-dan-TA-IF-ITB-Typst) by M. Dicky Isra, for ideas on authoring an IF ITB template natively in Typst.
