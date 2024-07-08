#!/bin/bash
python3 -m venv .venv
. .venv/bin/activate
pip install mypy pyright

export $(cat .env | xargs)

echo "-------- python -------- "
python3 test.py

echo "-------- mypy -------- "
mypy --strict test.py

echo "-------- pyright -------- "
pyright test.py