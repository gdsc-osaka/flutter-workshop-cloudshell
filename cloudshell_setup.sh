#!/usr/bin/env bash
set -euo pipefail

FLUTTER_DIR="${FLUTTER_DIR:-$HOME/flutter}"

if ! command -v flutter >/dev/null 2>&1; then
  if [ ! -d "$FLUTTER_DIR/.git" ]; then
    echo "Installing Flutter stable channel into $FLUTTER_DIR..."
    git clone --depth 1 --branch stable https://github.com/flutter/flutter.git "$FLUTTER_DIR"
  fi

  export PATH="$FLUTTER_DIR/bin:$PATH"

  if ! grep -q 'flutter/bin' "$HOME/.bashrc" 2>/dev/null; then
    printf '\nexport PATH="$HOME/flutter/bin:$PATH"\n' >>"$HOME/.bashrc"
  fi
else
  export PATH="$(dirname "$(command -v flutter)"):$PATH"
fi

flutter --version
flutter config --enable-web
flutter pub get

echo
echo "Cloud Shell setup complete."
echo "Run ./cloudshell_run.sh, then open Web Preview on port 8080."
