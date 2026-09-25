# Instructor Answer Key — PaakowTronics Service Desk

**Keep this file private.**

This is not a single-command answer sheet. Multiple valid Git solutions may exist.

The key describes the intended repository state, business outcome and evidence.

---

# Starting Repository

The bundled remote contains these branches:

```text
main
feature/knowledge-base
feature/customer-portal
hotfix/portal-status
maintenance/queue-cleanup
```

`main` starts from the service-desk baseline.

Important commits include:

```text
docs: establish service desk baseline
docs: add new starter access ticket
```

`feature/knowledge-base` adds:

```text
knowledge-base/account-lockout.md
```

`feature/customer-portal` contains two commits:

```text
docs: clarify customer-facing priority
docs: add customer portal routing
```

The first of these intentionally overlaps the area the learner is asked to modify.

`hotfix/portal-status` contains two portal-related commits.

`maintenance/queue-cleanup` contains a separate queue-maintenance note.

---

# Mission 1 — Expected Behaviour

The learner should inspect the repository before changing it.

They should discover that the current branch is `main`, the working tree is clean, and a remote named `origin` exists.

They should also discover the other branches rather than assuming that only `main` exists.

Exact commands are not required for marking.

---

# Mission 2 — Expected Understanding

The learner should read:

- root `README.md`;
- `docs/service-desk-policy.md`;
- `docs/priority-matrix.md`.

They should understand that the repository is documentation for a service desk and that priority is based on business impact.

---

# Mission 3 — Business Outcome

The learner should create a task branch and update the priority policy so that P2 clearly covers:

1. a major internal team being blocked from an important function; and
2. significant degradation of a customer-facing service.

The repository should continue to state that priority is based on business impact rather than the identity of the requester.

A meaningful commit should be created.

There is no single required branch name or commit-message wording.

---

# Mission 4 — Branch Investigation

The learner should discover that `feature/customer-portal` is relevant because it changes the same priority area and adds customer portal routing documentation.

They should also be able to explain what the other branches are for.

A learner who merges every branch without investigating has missed an important assessment objective.

---

# Mission 5 — Intended Integration

The relevant customer-portal work should be integrated.

Because the learner has modified the priority matrix and `feature/customer-portal` also modifies it, a conflict is expected when those histories are integrated in a suitable order.

The final priority matrix should preserve the intended business requirement.

It should not contain duplicated or contradictory P2 definitions.

`docs/customer-portal-routing.md` should be present if the learner determined that the customer-portal feature is part of the required integration.

The learner should verify the final history.

---

# Mission 6 — Recovery Test

The recovery script creates this temporary commit on the learner's current branch:

```text
docs: add temporary escalation note
```

It modifies:

```text
docs/incident-response.md
```

The script then moves the current branch back one commit.

The temporary commit is therefore no longer reachable from the branch tip but should remain discoverable through the local reflog.

A successful learner should:

1. notice the apparent disappearance;
2. inspect repository evidence;
3. inspect reflog or another appropriate local reference history;
4. identify the temporary commit;
5. recover the intended work without destroying their existing branch work;
6. verify that the recovered change exists.

There are multiple acceptable recovery methods.

The important evidence is that the learner understood what happened before acting.

---

# Mission 7 — Remote

`origin` points to the bundled local bare repository.

A learner should be able to explain that it is a remote Git repository used by the assessment and is not the same thing as the learner's local working repository.

The learner may push their completed branch to the assessment remote.

They should understand what branch is being pushed and what the remote will receive.

---

# Mission 8 — Final State

Acceptable final repositories can have different commit graphs because Git permits different valid sequences.

The final state should demonstrate:

- the requested policy clarification;
- appropriate integration of relevant work;
- no unresolved conflict markers;
- recovered temporary work where required;
- meaningful commits;
- no accidental secret files;
- understandable branch/history state;
- a clean working tree unless remaining changes are intentional and explained;
- a correct understanding of the remote.

---

# Optional Advanced Challenge

The instructor may ask the learner to bring only the `docs: add portal incident ticket` change from `hotfix/portal-status` into their branch.

The learner should determine which operation is appropriate.

A valid solution will normally involve applying that specific commit rather than merging the entire hotfix branch.

The learner must then inspect and verify the result.

Do not require one exact command sequence if another valid approach produces the intended result and the learner can explain it.

---

# What to Observe

## Strong evidence

The learner says things such as:

> “Let me inspect the branch history first.”

> “I want to see the diff before I commit.”

> “These two branches both changed the priority matrix, so I expect a possible conflict.”

> “The commit disappeared from the branch, but I can investigate reference history.”

> “I know what I want to achieve; I just need to check the exact syntax.”

## Weak evidence

The learner repeatedly asks:

> “What command do I type?”

or runs commands until something works without explaining the state.

---

# Final Assessment Principle

Do not mark only the final files.

Observe the learner's reasoning.

A learner who reaches the correct final state by blindly copying commands has not demonstrated the same skill as a learner who can investigate and explain the repository.
