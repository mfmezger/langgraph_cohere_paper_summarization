# Makefile
SHELL = /bin/bash


install_dev:
	poetry install --group dev

pc:
	pre-commit run --all-files

restart:
	docker compose down --remove-orphans
	docker compose up --build -d
