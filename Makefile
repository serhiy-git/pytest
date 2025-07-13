.PHONY: help all-tests api-tests format integration-setup integration-tests install-virtual-environment install-dependencies lint mongodb-tests
SHELL := /bin/bash

help:
	@echo "Available make targets:"
	@echo "  all-tests                    Run all tests"
	@echo "  compose-up                   Start docker compose services"
	@echo "  compose-down                 Stop docker compose services"
	@echo "  format                       Format Python code using Black"
	@echo "  install-virtual-environment  Install a local Python virtual environment"
	@echo "  install-dependencies         Install Python packages in the local environment"
	@echo "  lint                         Run Flake8 to check code style and quality"
	@echo "  remove-virtual-env           Remove Python virtual environment"

all-tests:
	@echo "Running all tests..."
	source .venv/bin/activate;
	pytest --html=reports/all.html --self-contained-html

compose-up: ## 👍 Start docker compose services
	echo "✅ starting docker-compose services..."
	docker-compose up -d

compose-down: ## 👎  Stop docker compose services
	@echo "🛑 stopping Docker Compose services..."
	docker-compose down

format:
	@echo "Formatting python code..."
	source .venv/bin/activate;
	black .

install-virtual-environment:
	@echo "Installing Python virtual environment..."
	python3 -m venv .venv

install-dependencies:
	@echo "Installing python packages..."
	source .venv/bin/activate;
	pip3 install -r requirements.txt

lint:
	@echo "Running Flake8 to check code style and quality..."
	source .venv/bin/activate;
	flake8 .

remove-virtual-env: ## 🗑️  Remove Python virtual environment
	@echo "🐍 removing python virtual environment..."
	rm -rvf .venv 2>/dev/null || true
	@echo "Python virtual environment removed"
