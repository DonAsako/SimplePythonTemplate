# python-project-template

Professional Python project template.

## Stack

- Python 3.13+
- [uv](https://docs.astral.sh/uv/) — dependency management
- [ruff](https://docs.astral.sh/ruff/) — linter & formatter
- [mypy](https://mypy.readthedocs.io/) — static type checking (strict)
- [pytest](https://docs.pytest.org/) — test runner with coverage, benchmark, asyncio
- [pre-commit](https://pre-commit.com/) — hooks (ruff, mypy, yamllint, mdformat, gitlint, gitleaks)
- [gitlint](https://jorisroovers.github.io/gitlint/) — Conventional Commits enforcement

## Setup

```sh
uv sync
uv run pre-commit install
```

## Usage

```sh
uv run app-cli
```

## Development

```sh
uv run ruff check .
uv run ruff format .
uv run mypy
uv run pytest
```
