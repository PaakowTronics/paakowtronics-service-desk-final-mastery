#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE="$SCRIPT_DIR/starter-remote.bundle"
REMOTE="$SCRIPT_DIR/starter-remote.git"
TARGET="$SCRIPT_DIR/assessment-repository"

if [[ ! -f "$BUNDLE" ]]; then
  echo "ERROR: starter-remote.bundle was not found."
  exit 1
fi

if [[ -e "$TARGET" ]]; then
  echo "assessment-repository already exists. Use ./reset.sh if you want a clean copy."
  exit 1
fi

if [[ ! -d "$REMOTE" ]]; then
  echo "Preparing the assessment Git repository from starter-remote.bundle..."
  git clone --bare "$BUNDLE" "$REMOTE"
fi

git clone "$REMOTE" "$TARGET"
cd "$TARGET"

git config user.name "Git Essentials Learner"
git config user.email "learner@training.invalid"

echo
echo "Assessment repository created:"
echo "  $TARGET"
echo
echo "Starting branch:"
git branch --show-current
echo
echo "Remote:"
git remote -v
