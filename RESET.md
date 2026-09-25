# Resetting the PaakowTronics Service Desk Assessment

## Why Reset?

The assessment is designed to be reusable.

After one learner completes it, you can create a fresh copy for another learner.

The reset process recreates the learner repository from the bundled clean assessment remote.

---

# Before Resetting

Make sure the learner's assessment is no longer needed.

The reset process deletes the package's generated:

```text
assessment-repository/
```

It does not delete `starter-remote.git`.

Do not place unrelated work inside `assessment-repository`.

---

# Reset on Linux, macOS or Git Bash

From the `final-mastery` directory:

```bash
./reset.sh
```

---

# Reset on PowerShell

From the `final-mastery` directory:

```powershell
.\reset.ps1
```

---

# Verify the Reset

After resetting, enter:

```text
assessment-repository/
```

and confirm that the repository is back at the original clean starting state.

The learner should again see the prepared remote branches and the original history.
