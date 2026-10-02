# Resetting the PaakowTronics Service Desk Assessment

The assessment is designed to be reusable.

A reset removes only the generated assessment state:

```text
assessment-repository/
starter-remote.git/
```

It does **not** modify or recreate `starter-remote.bundle`.

The bundle is the clean source of truth.

## Before resetting

Make sure the current learner's work is no longer needed. The reset is destructive to the generated learner repository.

Do not place unrelated files inside `assessment-repository/`.

## Git Bash / Linux / macOS

From the `final-mastery` directory:

```bash
./reset.sh
```

## PowerShell

From the `final-mastery` directory:

```powershell
.\reset.ps1
```

## Verify

After the reset, the generated repository should:

- be on local `main`;
- have a clean working tree;
- point `origin` at the newly generated local bare remote;
- show the prepared remote-tracking branches;
- contain the original baseline documentation without learner changes.
