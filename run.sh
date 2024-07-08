#!/bin/bash
python3 -m venv .venv
. .venv/bin/activate
pip install mypy pyright

export PYTHONPATH=src/main:src/extplugin1 

echo "-------- python -------- "
python3 test.py

echo "-------- mypy -------- "
mypy --strict test.py

echo "-------- pyright -------- "
pyright test.py