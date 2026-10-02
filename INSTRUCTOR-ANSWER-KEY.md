# Instructor Answer Key — PaakowTronics Service Desk

**Keep this file private.**

There is no single required command sequence. The learner may use merge, cherry-pick, restore, reset, branch creation and other valid Git operations where appropriate. The important evidence is whether the learner understood the repository and produced the required business result safely.

---

# 1. Prepared Starting History

The clean remote contains these branch histories:

```text
main
├── docs: establish service desk baseline
├── docs: add new starter access ticket
└── assessment: add learner challenge instructions

feature/knowledge-base
└── docs: add account lockout procedure

maintenance/queue-cleanup
└── docs: add queue maintenance note

feature/customer-portal
├── docs: clarify customer-facing priority
├── docs: add customer portal routing
└── docs: prioritize requests by requester role

hotfix/portal-status
├── docs: add portal status procedure
└── docs: add portal incident ticket
```

The important point is that the learner starts on local `main`, while the other prepared lines of work are normally visible as `origin/*` remote-tracking branches after cloning.

The branch labels are not proof that every commit on a branch is suitable for integration.

---

# 2. Mission 1 — Expected Discovery

Strong evidence includes:

- current branch is `main`;
- working tree is clean;
- recent history contains the baseline commits followed by the assessment-instructions commit;
- `origin` is configured;
- remote-tracking branches exist for the other prepared work;
- the learner does not start editing immediately.

Exact commands are not required.

A learner who only looks at local branches and concludes that no other work exists has missed the remote-tracking state.

---

# 3. Mission 2 — Expected Understanding

The learner should understand:

- the repository is service-desk documentation and ticket material;
- priority is based on business impact and urgency;
- requester identity is not supposed to determine priority;
- policy changes should be reviewed;
- the repository contains documentation, tickets and knowledge-base material.

---

# 4. Mission 3 — Manager's Request

The learner should create an isolated branch from the baseline and update the priority policy so that P2 explicitly covers both:

1. a major internal team blocked from an important function; and
2. significant degradation of a customer-facing service.

The final policy must continue to make clear that priority is based on business impact rather than requester identity/job title.

A valid resulting `docs/priority-matrix.md` can have a P2 section equivalent to:

```text
P2 | High business impact | A major team is blocked from an important function.
P2 | Customer-facing impact | A customer-facing service is significantly degraded but still available.
```

The exact prose may differ if the meaning is preserved.

The learner should create a meaningful commit and should not work directly on the long-lived `main` branch.

---

# 5. Mission 4 — The Important Discovery

The learner should investigate all relevant remote-tracking branches.

## `feature/knowledge-base`

Contains useful account-lockout documentation but is unrelated to the manager's current policy request.

Expected decision: normally leave it separate.

## `maintenance/queue-cleanup`

Contains a queue-maintenance note unrelated to the current policy request.

Expected decision: normally leave it separate.

## `feature/customer-portal`

This is the key branch.

It contains:

- `docs: clarify customer-facing priority` — relevant and useful;
- `docs: add customer portal routing` — relevant supporting documentation;
- `docs: prioritize requests by requester role` — **deliberately questionable and inconsistent with the existing policy principle**.

The learner should discover the third commit by inspecting history/diffs rather than assuming the whole branch is good because its branch name sounds relevant.

## `hotfix/portal-status`

Contains portal status procedure and a specific incident ticket. It is not part of the main customer-portal policy integration request, although Mission 8 later asks for the ticket specifically.

---

# 6. Mission 5 — Integration and Conflict

The assessment is intentionally constructed so the learner's policy work and the customer-portal history can touch the same file.

The useful customer-facing priority change and the learner's P2 clarification overlap in `docs/priority-matrix.md`.

A suitable integration path can therefore produce a conflict.

The final result should:

- preserve the major-internal-team P2 meaning;
- preserve the customer-facing degradation P2 meaning;
- retain the business-impact routing principle;
- **exclude** the requester-role shortcut;
- include `docs/customer-portal-routing.md` if the learner determines that this relevant customer-portal documentation belongs in the completed work;
- contain no conflict markers;
- have understandable history.

The learner does not have to use one exact merge/cherry-pick sequence. What matters is that they integrate the relevant changes deliberately and do not blindly import the bad policy commit.

### Important marking point

If a learner merges the entire customer branch and then notices the requester-role shortcut, they can still demonstrate recovery/cleanup skill by removing the incorrect policy change and verifying the final result. Do not require a perfect first attempt; assess whether they recognised and corrected the problem responsibly.

---

# 7. Mission 6 — Recovery Incident

The recovery script creates:

```text
commit subject: docs: add temporary escalation note
file: docs/incident-response.md
```

It then moves the current branch back one commit with a hard reset.

Expected discovery:

- the current branch tip no longer contains the temporary commit;
- the commit is still present in local reference history;
- the learner can identify the commit and recover the useful work;
- existing completed assessment work is not destroyed.

The learner may use different recovery methods. A good explanation is more important than a particular command.

The recovered file should contain the temporary escalation note and the learner's earlier assessment work should remain intact.

---

# 8. Mission 7 — Remote Awareness

`origin` points to the generated local bare repository.

The learner should understand:

- a local branch is not the same object as a remote-tracking branch;
- `origin/*` represents the learner's local knowledge of branches on the remote;
- pushing updates the remote repository with the selected local branch/commits;
- pushing is different from committing.

A push is optional unless the instructor wants to observe the learner's remote workflow.

---

# 9. Mission 8 — Focused Change Request

The requested item is the commit whose subject is:

```text
docs: add portal incident ticket
```

The exact commit ID should be discovered from the learner's current remote-tracking history; it is intentionally not part of the learner instructions.

The learner should bring in the change represented by that specific commit without automatically importing the earlier portal-status procedure.

A normal solution is to apply that individual commit to the learner's completed line of work. Other valid approaches are acceptable if the learner can explain why they satisfy the request and the resulting repository contains the intended ticket without unrelated hotfix changes.

---

# 10. Final Expected Repository Content

At completion, the learner's final line of work should contain at least:

```text
README.md
FINAL-MASTERY-CHALLENGE.md

docs/service-desk-policy.md
docs/priority-matrix.md
docs/incident-response.md
docs/customer-portal-routing.md

tickets/TKT-1054.md
tickets/TKT-1055.md
tickets/TKT-1056.md
tickets/TKT-1060.md
```

`docs/priority-matrix.md` must not contain the requester-role shortcut.

`docs/incident-response.md` should contain the recovered temporary escalation note after Mission 6.

`docs/portal-status-procedure.md` is **not required** by Mission 8 if the learner deliberately brought in only the requested incident-ticket commit.

`knowledge-base/account-lockout.md` and `docs/queue-maintenance.md` are not required for the final result unless the learner can justify why they chose to integrate them. They are intentionally useful as unrelated branch noise.

---

# 11. Strong Evidence of Mastery

Look for behaviour such as:

> “I want to inspect what each branch actually changed before I merge anything.”

> “This later commit conflicts with the policy principle, so I should not blindly import the whole branch.”

> “Both histories changed the priority matrix, so I need to inspect the conflict and combine the intended meaning.”

> “The branch tip no longer contains the work, but I can investigate the repository's reference history.”

> “Management asked for one commit, so I need to identify that commit rather than bring in the whole branch.”

These statements demonstrate understanding of Git as a state/history system rather than a command list.

---

# 12. Weak Evidence

Warning signs include:

- asking for an exact command at every step;
- merging every available branch without inspection;
- treating branch names as proof of correctness;
- accepting a conflict resolution without reading the conflicting content;
- performing another hard reset when work appears missing without first investigating;
- pushing without knowing which branch is being pushed or where it goes;
- bringing in an entire hotfix when only one commit was requested;
- being unable to explain what changed after the commands succeeded.

---

# 13. Instructor Flexibility

Do not require one exact commit graph.

Different valid histories can result from different legitimate integration strategies.

Mark the learner on:

1. repository awareness;
2. investigation quality;
3. safe isolation of work;
4. correct business outcome;
5. deliberate integration;
6. conflict reasoning;
7. recovery reasoning;
8. remote understanding;
9. focused change selection;
10. final verification and explanation.

The final files alone are not sufficient evidence of mastery.
