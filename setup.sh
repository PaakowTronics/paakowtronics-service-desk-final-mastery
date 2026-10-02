#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE="$SCRIPT_DIR/starter-remote.bundle"
REMOTE="$SCRIPT_DIR/starter-remote.git"
REPO="$SCRIPT_DIR/assessment-repository"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is required but was not found in PATH." >&2
  exit 1
fi

if [[ ! -f "$BUNDLE" ]]; then
  echo "Missing starter-remote.bundle" >&2
  exit 1
fi

if [[ -e "$REPO" ]]; then
  echo "assessment-repository already exists. Use ./reset.sh if you want a fresh assessment." >&2
  exit 1
fi

rm -rf "$REMOTE"

echo "Creating clean assessment remote..."
git -c init.defaultBranch=main clone --bare "$BUNDLE" "$REMOTE" >/dev/null

echo "Creating learner repository..."
git clone "$REMOTE" "$REPO"

if ! git -C "$REPO" config user.name >/dev/null; then
  git -C "$REPO" config user.name "Assessment Learner"
fi
if ! git -C "$REPO" config user.email >/dev/null; then
  git -C "$REPO" config user.email "learner@example.invalid"
fi

echo
echo "Assessment ready: $REPO"
echo "The learner starts on local main with a clean working tree."
