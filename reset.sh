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

if [[ ! -d "$TARGET" ]]; then
  echo "assessment-repository does not exist. Creating a fresh copy."
else
  echo "This will permanently delete:"
  echo "  $TARGET"
  read -r -p "Type RESET to continue: " ANSWER
  if [[ "$ANSWER" != "RESET" ]]; then
    echo "Reset cancelled."
    exit 1
  fi
  rm -rf "$TARGET"
fi

rm -rf "$REMOTE"

echo "Preparing the assessment Git repository from starter-remote.bundle..."
git clone --bare "$BUNDLE" "$REMOTE"

git clone "$REMOTE" "$TARGET"
cd "$TARGET"

git config user.name "Git Essentials Learner"
git config user.email "learner@training.invalid"

echo "Fresh assessment repository created."
