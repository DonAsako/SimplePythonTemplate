"""Tests for the application entry point."""

import pytest

from app.main import main


@pytest.mark.unit
def test_main_prints_hello_world(capsys: pytest.CaptureFixture[str]) -> None:
    """main writes the greeting to stdout and nothing to stderr."""
    main()

    captured = capsys.readouterr()
    assert captured.out.strip() == 'Hello, World!'
    assert captured.err == ''
