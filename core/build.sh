#!/usr/bin/env bash
set -o errexit

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
MANAGE_PY="$SCRIPT_DIR/manage.py"

python -m pip install --upgrade pip
python "$MANAGE_PY" collectstatic --no-input
python "$MANAGE_PY" migrate