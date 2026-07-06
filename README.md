# Python Project Template

[![CI](https://github.com/DonAsako/SimplePythonTemplate/actions/workflows/ci.yml/badge.svg)](https://github.com/DonAsako/SimplePythonTemplate/actions/workflows/ci.yml)
[![Python](https://img.shields.io/badge/python-3.13%2B-blue)](https://www.python.org/)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

A professional, batteries-included template for Python projects.

Click **"Use this template"** on GitHub to bootstrap a new repository.

## What's inside

| Tool | Purpose |
| --- | --- |
| [uv](https://docs.astral.sh/uv/) | Fast dependency & virtualenv management |
| [Hatchling](https://hatch.pypa.io/) | PEP 517 build backend |
| [Ruff](https://docs.astral.sh/ruff/) | Linter + formatter (strict, ~40 rule families enabled) |
| [Mypy](https://mypy.readthedocs.io/) | Static type checking (strict mode) |
| [Pytest](https://docs.pytest.org/) | Test runner (+ coverage, asyncio, benchmark, xdist, mock, timeout, dotenv) |
| [pre-commit](https://pre-commit.com/) | Git hooks orchestration |
| [gitlint](https://jorisroovers.github.io/gitlint/) | Conventional Commits enforcement |
| [yamllint](https://yamllint.readthedocs.io/) | YAML linting |
| [mdformat](https://mdformat.readthedocs.io/) | Markdown formatting |
| [gitleaks](https://github.com/gitleaks/gitleaks) | Secret detection |
| [GitHub Actions](.github/workflows/ci.yml) | CI: lint, type-check, tests on every push/PR |
| [just](https://github.com/casey/just) | Task runner for common dev commands (optional) |

## Requirements

- Python **3.13+**
- [uv](https://docs.astral.sh/uv/getting-started/installation/)

## Getting started

After creating your repo from this template:

```sh
# 1. Rename the `app` package to your project name
#    - rename the `app/` directory
#    - update `[project].name`, `[project.scripts]`, `[tool.hatch.build.*]`,
#      `[tool.mypy].files`, `[tool.coverage.run].source` in pyproject.toml
#    - update the mypy hook `files:` pattern in .pre-commit-config.yaml

# 2. Install dependencies and dev tools
uv sync

# 3. Install git hooks (pre-commit + commit-msg)
uv run pre-commit install
```

## Daily commands

```sh
uv run app-cli           # run the entry point
uv run ruff check .      # lint
uv run ruff format .     # format
uv run mypy              # type-check
uv run pytest            # tests
uv run pytest --cov      # tests with coverage
```

With [`just`](https://github.com/casey/just) installed, the same workflows are shortcuts:

```sh
just            # list all recipes
just run        # run the entry point
just fix        # auto-fix lint + format
just check      # lint + format-check + typecheck + test (mirrors CI)
```

## Layout

```text
.
├── app/                    # source package
│   ├── __init__.py
│   ├── main.py
│   └── py.typed            # PEP 561 marker (ships type hints to consumers)
├── tests/
│   └── unit/
│       └── test_main.py
├── .github/
│   ├── workflows/ci.yml    # CI pipeline
│   ├── ISSUE_TEMPLATE/
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── dependabot.yml
├── .pre-commit-config.yaml
├── .editorconfig           # editor-agnostic formatting
├── .gitlint                # Conventional Commits config
├── .yamllint.yaml
├── justfile                # task runner
├── CONTRIBUTING.md
├── SECURITY.md
├── pyproject.toml          # single source of truth (ruff, mypy, pytest, coverage)
└── uv.lock
```

## Commit convention

Commits must follow [Conventional Commits](https://www.conventionalcommits.org/):

```text
feat(scope): add new capability
fix: correct off-by-one in parser
chore: bump dependencies
```

Allowed types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.

## License

[MIT](LICENSE)
