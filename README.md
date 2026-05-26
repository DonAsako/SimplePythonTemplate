# Python Project Template

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

## Layout

```text
.
├── app/                    # source package
│   ├── __init__.py
│   └── main.py
├── tests/
│   └── unit/
├── .pre-commit-config.yaml
├── .gitlint                # Conventional Commits config
├── .yamllint.yaml
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

[GPL-3.0-or-later](LICENSE)
