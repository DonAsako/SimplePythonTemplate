# Contributing

Thanks for taking the time to contribute!

## Development setup

Requires [uv](https://docs.astral.sh/uv/) and Python 3.13+.

```sh
uv sync                    # install deps + dev tools
uv run pre-commit install  # install git hooks (pre-commit + commit-msg)
```

If you have [`just`](https://github.com/casey/just) installed, `just install` does both.

## Workflow

1. Create a branch off `main`.

1. Make your change, keeping it focused.

1. Run the full local gate before pushing:

   ```sh
   just check          # lint + format-check + typecheck + test
   # or, without just:
   uv run ruff check . && uv run ruff format --check . && uv run mypy && uv run pytest
   ```

1. Open a pull request against `main`. CI must pass.

## Coding standards

- **Lint & format:** [Ruff](https://docs.astral.sh/ruff/) (strict rule set, 120-column lines).
- **Types:** [Mypy](https://mypy.readthedocs.io/) in strict mode — all new code must be fully typed.
- **Tests:** [Pytest](https://docs.pytest.org/); add or update tests for any behavior change. Coverage must stay at or above the configured threshold.

The pre-commit hooks enforce most of this automatically.

## Commit messages

Commits follow [Conventional Commits](https://www.conventionalcommits.org/) and are validated by `gitlint`:

```text
feat(scope): add new capability
fix: correct off-by-one in parser
```

Allowed types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.

## Reporting bugs & requesting features

Use the issue templates. For security issues, see [SECURITY.md](SECURITY.md) instead of the public tracker.
