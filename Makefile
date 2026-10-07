.PHONY: setup lint format check run clean

# Use uv for package management
UV := uv

setup:
	$(UV) sync

lint:
	$(UV) run ruff check .
	$(UV) run ruff format --check .
	$(UV) run mypy .

format:
	$(UV) run ruff check --fix .
	$(UV) run ruff format .
	$(UV) run black .
	$(UV) run isort .

check:
	$(UV) run ruff check .
	$(UV) run ruff format --check .
	$(UV) run black --check .
	$(UV) run isort --check-only .
	$(UV) run mypy .

run:
	$(UV) run python main.py

clean:
	rm -rf .venv
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".mypy_cache" -exec rm -rf {} +
	find . -type d -name ".ruff_cache" -exec rm -rf {} +
