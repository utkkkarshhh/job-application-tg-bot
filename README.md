# Job Application Telegram Bot

A Telegram bot for managing job applications. 

## Requirements

- Python >= 3.13
- [uv](https://docs.astral.sh/uv/) for dependency management

## Setup

1. Install dependencies:
   ```bash
   make setup
   ```
   Or using `uv` directly:
   ```bash
   uv sync
   ```

2. Activate the virtual environment:
   ```bash
   source .venv/bin/activate
   ```

## Development

We use `ruff`, `black`, `isort`, and `mypy` for code formatting and linting.

- **Format code:**
  ```bash
  make format
  ```

- **Run linting (ruff, mypy):**
  ```bash
  make lint
  ```

- **Run all checks (format check and linting):**
  ```bash
  make check
  ```
