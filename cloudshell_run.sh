#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-8080}"
FLUTTER_DIR="${FLUTTER_DIR:-/google/flutter}"

if [ -d "$FLUTTER_DIR/.git" ]; then
  git config --global --add safe.directory "$FLUTTER_DIR"
fi

if [ -x "$FLUTTER_DIR/bin/flutter" ]; then
  export PATH="$FLUTTER_DIR/bin:$PATH"
fi

if ! command -v flutter >/dev/null 2>&1; then
  ./cloudshell_setup.sh
fi

flutter config --enable-web
flutter run -d web-server --web-hostname 0.0.0.0 --web-port "$PORT"
