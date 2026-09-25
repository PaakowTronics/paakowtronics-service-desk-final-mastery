#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_TARGET="$SCRIPT_DIR/assessment-repository"
TARGET="${1:-$DEFAULT_TARGET}"

if [[ ! -d "$TARGET/.git" ]]; then
  echo "Usage: ./prepare-recovery-test.sh [path-to-learner-repository]"
  exit 1
fi

cd "$TARGET"
BRANCH="$(git branch --show-current)"
if [[ -z "$BRANCH" ]]; then
  echo "The learner repository is not on a normal branch. Stop and inspect it first."
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "The learner has uncommitted changes. Do not prepare the recovery test until the working tree is clean."
  exit 1
fi

cat >> docs/incident-response.md <<'RECOVERY_EOF'

## Temporary escalation note

For a confirmed P1 incident, the Service Desk should identify an incident owner immediately and record the first escalation action.
RECOVERY_EOF

git add docs/incident-response.md
git commit -m 'docs: add temporary escalation note' >/dev/null
TEMP_COMMIT="$(git rev-parse HEAD)"
git reset --hard HEAD~1 >/dev/null

echo "Recovery test prepared for branch: $BRANCH"
echo "The useful commit was deliberately removed from the branch tip."
echo "The commit id is intentionally not shown to the learner."
echo "Instructor reference: $TEMP_COMMIT"
