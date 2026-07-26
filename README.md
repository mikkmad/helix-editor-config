# Helix Dev Setup

A personal configuration setup primarily for C/C++, Java and Python development,
with Rust and Cargo also installed, as I sometimes (rarely) need it.

This README has partially been created using AI.

## Installation

Make sure [Helix](https://docs.helix-editor.com/install.html) is installed,
and then clone the git repo directly into Helix' configuration directory:

```bash
git clone "https://github.com/mikkmad/helix-editor-config.git" ~/.config/helix
```

## Installed Tools

### C/C++ Development

The script installs:

- `clang` — LLVM C/C++ compiler
- `clangd` — C/C++ language server via `clang-tools-extra`
  - code completion
  - diagnostics
  - go-to-definition
  - symbol search
- `clang-format` — automatic C/C++ formatting
- `cmake` — build system generator
- `make` — build automation
- `gdb` and `lldb` — debuggers
- `gcc` and `gcc-c++` for projects expecting the GCC toolchain.

### Python Development

Python tooling is managed using `uv` instead of `pip`.

Installed tools:

- `uv` — fast Python package and tool manager
- `black` — Python code formatter
- `basedpyright` — Python language server and type checker

### Java Development

Java development is managed using SDKMAN!.

The installer sets up SDKMAN!, which can then be used to install Java SDKs and Java development tools.

Example:

```bash
sdk install java
sdk install maven
# or:
sdk install gradle
```

`jdtls` must be installed using [Homebrew](https://brew.sh/):

```bash
brew install jdtls
```

It provides Java language server support for Helix, including: 

- code completion
- diagnostics
- navigation
- refactoring support

### Node.js

Node.js for JavaScript/TypeScript tooling and Node-based developer tools.

## Post-setup

Do run the following code to fetch/build the tree-sitter grammars:
```bash
hx --grammar fetch && hx --grammar build
```
