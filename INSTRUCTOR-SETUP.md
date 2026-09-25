# Instructor Setup — PaakowTronics Service Desk

## Purpose

This package removes the need for the instructor to invent a final Git assessment repository.

The course includes a prepared **bare Git remote** containing realistic service-desk history and branches.

The instructor creates a fresh learner repository from that remote.

---

# What Is Included

```text
final-mastery/
├── starter-remote.git/          Prepared Git remote
├── LEARNER-BRIEF.md             Give this to the learner
├── INSTRUCTOR-ANSWER-KEY.md     Keep private
├── setup.sh
├── setup.ps1
├── prepare-recovery-test.sh
├── prepare-recovery-test.ps1
├── reset.sh
└── reset.ps1
```

---

# Step 1 — Create a Fresh Assessment Repository

### Linux, macOS or Git Bash

Run:

```bash
./setup.sh
```

### PowerShell

Run:

```powershell
.\setup.ps1
```

The script creates:

```text
assessment-repository/
```

Do not give the learner access to the instructor answer key.

---

# Step 2 — Give the Learner the Brief

Give the learner:

```text
LEARNER-BRIEF.md
```

The learner works inside:

```text
assessment-repository/
```

The learner does not need to know how the assessment repository was constructed.

---

# Step 3 — Observe, Don't Rescue

The instructor should observe the learner's behaviour.

Pay particular attention to whether the learner naturally:

- checks status;
- reads history;
- inspects diffs;
- investigates branches;
- predicts before changing state;
- verifies after changing state;
- reads errors;
- uses documentation when uncertain.

Do not provide exact commands unless the assessment rules allow it.

---

# Step 4 — Prepare the Recovery Test

After the learner has completed the earlier work and reached Mission 6, run the recovery preparation script **inside the learner's assessment repository**.

### Git Bash / Linux / macOS

```bash
../prepare-recovery-test.sh
```

If your current directory is the `final-mastery` directory instead:

```bash
./prepare-recovery-test.sh
```

The script must be pointed at the learner's repository when prompted if it is not in the default location.

### PowerShell

```powershell
.\prepare-recovery-test.ps1
```

The script creates a useful commit and then deliberately moves the current branch back so that the commit is no longer visible in normal branch history but remains discoverable through the local reflog.

Do not tell the learner the exact recovery mechanism.

Tell them only the Mission 6 statement in the learner brief.

---

# Step 5 — Remote Test

The assessment repository's `origin` points to the bundled local bare remote.

This means the learner can inspect and push to a safe assessment remote without affecting a public GitHub repository.

The remote is intentionally local to this assessment package.

---

# Resetting the Assessment

When the assessment is finished, or if you want to give another learner a clean repository, use:

```bash
./reset.sh
```

or:

```powershell
.\reset.ps1
```

The reset script removes only the assessment repository created by this package and clones a fresh copy from the bundled assessment remote.

Read `RESET.md` before the first use.

---

# Important Instructor Rule

Do not modify `starter-remote.git` during normal assessment delivery.

It is the clean source of truth.

If you accidentally damage the learner repository, reset it rather than repairing it manually.
