include .env

PY_VENV=venv
PYTHON = $(PY_VENV)/bin/python
PIP = $(PY_VENV)/bin/pip
PROJECT_DIR = $(shell pwd)

init:
	python3 -m venv $(PY_VENV)
	$(PIP) install -r requirements.txt

run:
	source $(PROJECT_DIR)/.env && $(PY_VENV)/bin/chainlit run app.py -w
