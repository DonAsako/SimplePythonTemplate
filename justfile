# Common developer tasks. Run `just` to list them.
# https://github.com/casey/just

# Show available recipes
default:
    @just --list

# Install dependencies and git hooks
install:
    uv sync
    uv run pre-commit install

# Run the CLI entry point
run:
    uv run app-cli

# Lint with ruff
lint:
    uv run ruff check .

# Auto-fix lint issues and format
fix:
    uv run ruff check --fix .
    uv run ruff format .

# Check formatting without writing changes
format-check:
    uv run ruff format --check .

# Static type-check with mypy
typecheck:
    uv run mypy

# Run the test suite
test:
    uv run pytest

# Run tests with coverage
cov:
    uv run pytest --cov --cov-report=term-missing

# Run every pre-commit hook on all files
hooks:
    uv run pre-commit run --all-files

# Full local gate: lint + format + types + tests (mirror of CI)
check: lint format-check typecheck test
