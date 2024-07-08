#!/bin/bash
python3 -m venv /tmp/.venv
. /tmp/.venv/bin/activate
pip install mypy pyright pyre-check

export $(cat .env | xargs)

echo "-------- python -------- "
python3 test.py

echo "-------- mypy -------- "
mypy --strict test.py

echo "-------- pyre -------- "
pyre

echo "-------- pyright -------- "
pyright test.py