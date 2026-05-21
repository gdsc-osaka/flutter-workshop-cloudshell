#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-8080}"

if [ -d "$HOME/flutter/bin" ]; then
  export PATH="$HOME/flutter/bin:$PATH"
fi

if ! command -v flutter >/dev/null 2>&1; then
  ./cloudshell_setup.sh
fi

flutter config --enable-web
flutter run -d web-server --web-hostname 0.0.0.0 --web-port "$PORT"
