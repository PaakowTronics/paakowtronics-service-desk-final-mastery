# PaakowTronics Service Desk — Final Mastery Assessment

This package contains the complete, reproducible assessment environment for the **Git Essentials Final Mastery Challenge**.

The assessment repository itself contains the learner instructions. After setup, the learner should begin by opening:

```text
assessment-repository/README.md
```

and then:

```text
assessment-repository/FINAL-MASTERY-CHALLENGE.md
```

## Git Essentials Course

This repository is created for learners who studied the **Git Essentials** course:

https://github.com/PaakowTronics/git-essentials

The course is the preparation for this assessment. Learners are expected to use the skills developed there rather than receive command-by-command instructions.

## For the instructor

1. Read `INSTRUCTOR-SETUP.md`.
2. Run `setup.sh` on Linux/macOS/Git Bash or `setup.ps1` on PowerShell.
3. Give the learner the resulting `assessment-repository/`.
4. The learner should read the repository's own `README.md` and `FINAL-MASTERY-CHALLENGE.md`.
5. Keep `INSTRUCTOR-ANSWER-KEY.md` private.
6. Use the recovery-test script only when the learner reaches Mission 6.
7. Use the reset script to create a fresh assessment repository for another learner.

## Package contents

```text
final-mastery/
├── README.md
├── LEARNER-BRIEF.md
├── INSTRUCTOR-SETUP.md
├── INSTRUCTOR-ANSWER-KEY.md
├── RESET.md
├── SCENARIO.md
├── setup.sh
├── setup.ps1
├── prepare-recovery-test.sh
├── prepare-recovery-test.ps1
├── reset.sh
├── reset.ps1
└── starter-remote.git/
```

The `starter-remote.git` directory is the clean assessment source. It is a real bare Git repository containing the prepared history and branches.

The learner's copy receives all challenge instructions from the repository itself.
