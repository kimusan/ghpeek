#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 x.y.z" >&2
  exit 1
fi

version="$1"

VERSION="$version" python - <<'PY'
import os
import re
from pathlib import Path

version = os.environ["VERSION"]
path = Path("pyproject.toml")
text = path.read_text()
new_text, count = re.subn(
    r'^(version\s*=\s*")[^"]+(")',
    rf'\g<1>{version}\2',
    text,
    flags=re.MULTILINE,
)
if count != 1:
    raise SystemExit("Expected exactly one version field in pyproject.toml")
path.write_text(new_text)
PY

python -m build
python -m twine check dist/*
python -m twine upload dist/*
