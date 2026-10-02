#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="${1:-$SCRIPT_DIR/assessment-repository}"

if [[ ! -d "$REPO/.git" ]]; then
  echo "Usage: $0 [path-to-assessment-repository]" >&2
  exit 1
fi

if [[ -n "$(git -C "$REPO" status --porcelain)" ]]; then
  echo "Learner repository is not clean. Do not introduce the recovery incident until it is clean." >&2
  exit 1
fi

BRANCH="$(git -C "$REPO" branch --show-current)"
if [[ -z "$BRANCH" ]]; then
  echo "Could not determine the current branch." >&2
  exit 1
fi

FILE="$REPO/docs/incident-response.md"
MARKER="\n## Temporary escalation note\n\nDuring an escalation, record the person who accepted the escalation and the next verification point.\n"

if grep -q "Temporary escalation note" "$FILE"; then
  echo "Recovery test content already exists in $FILE. Refusing to run twice." >&2
  exit 1
fi

printf "%b" "$MARKER" >> "$FILE"
git -C "$REPO" add docs/incident-response.md
git -C "$REPO" commit -m "docs: add temporary escalation note" >/dev/null
RECOVERY_COMMIT="$(git -C "$REPO" rev-parse HEAD)"
git -C "$REPO" reset --hard HEAD~1 >/dev/null

echo "Recovery incident prepared on branch: $BRANCH"
echo "The useful commit is no longer at the branch tip."
echo "INSTRUCTOR ONLY — recovery commit: $RECOVERY_COMMIT"
echo "Ask the learner to investigate and recover the missing work."
