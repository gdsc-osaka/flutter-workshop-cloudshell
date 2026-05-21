#!/usr/bin/env bash
set -euo pipefail

FLUTTER_DIR="${FLUTTER_DIR:-/google/flutter}"

if [ -d "$FLUTTER_DIR/.git" ]; then
  git config --global --add safe.directory "$FLUTTER_DIR"
fi

if [ -x "$FLUTTER_DIR/bin/flutter" ]; then
  export PATH="$FLUTTER_DIR/bin:$PATH"
fi

if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter SDK was not found. Cloud Shell should provide it at /google/flutter." >&2
  exit 1
fi

flutter --version
flutter config --enable-web
flutter pub get

echo
echo "Cloud Shell setup complete."
echo "Run ./cloudshell_run.sh, then open Web Preview on port 8080."
