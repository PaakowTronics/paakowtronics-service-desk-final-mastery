#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$SCRIPT_DIR/assessment-repository"
REMOTE="$SCRIPT_DIR/starter-remote.git"

rm -rf "$REPO" "$REMOTE"
"$SCRIPT_DIR/setup.sh"
