# Git Essentials — Final Mastery Challenge

# PaakowTronics Service Desk

## Purpose

This is the final practical assessment for Git Essentials.

You are now working with a small repository used by the fictional **PaakowTronics Service Desk**.

The repository contains service-desk policies, ticket records and knowledge-base procedures.

This is intentionally different from the lessons.

You are **not** given a command-by-command recipe.

Your job is to investigate, plan, act, verify and recover.

---

# Your Rules

You may use:

- the repository README;
- the documentation contained in the repository;
- Git's built-in help;
- official Git documentation;
- normal terminal documentation;
- your Git Essentials course notes;
- your own previous work.

You may not ask the instructor:

> “What exact command should I type?”

You may ask for clarification about the **business requirement** or what a task is asking you to achieve.

If you do not know the exact Git syntax, find it.

That is part of the assessment.

---

# Your Starting Situation

You have been given a copy of the **PaakowTronics Service Desk** repository.

The Service Desk is standardising its support procedures.

Several pieces of work have been developed independently by different support staff.

Some work is ready to integrate.

Some work needs review.

One part of the work will deliberately require you to investigate a conflict.

Later, you will be given a recovery problem.

The repository is real Git data prepared specifically for this assessment. You do not need to invent the branches, commits or history yourself.

---

# Mission 1 — Orient Yourself

**Do not change anything yet.**

Determine:

- where you are;
- whether you are inside a Git repository;
- the current branch;
- the repository status;
- recent history;
- available branches;
- configured remotes.

Then explain, in your own words, what you discovered.

Do not continue until you understand the starting state.

---

# Mission 2 — Understand the Service Desk

Read the repository `README.md` and the relevant documents under `docs/`.

Determine:

- what the repository is used for;
- how the files are organised;
- how ticket priority works;
- what the service-desk policy says about documentation and escalation;
- what sort of change would be appropriate for this repository.

You are not being assessed on your ability to invent business rules.

You are being assessed on your ability to **read the existing project before changing it**.

---

# Mission 3 — Service Desk Change Request

The Service Desk manager has requested the following policy clarification:

> **Priority P2 should clearly cover a major internal team being blocked from an important function and a significant degradation of a customer-facing service. The policy should also make clear that priority is based on business impact rather than the identity of the person who submitted the ticket.**

You must implement this change in the repository.

Before committing:

- inspect what you changed;
- inspect repository status;
- review the diff;
- make sure you have not changed unrelated files.

Create a meaningful commit.

Choose an appropriate branch name yourself.

Do not ask the instructor what branch name to use.

---

# Mission 4 — Investigate Other Work

There are other branches in the repository.

Before integrating anything, investigate them.

Determine:

- what each relevant branch is for;
- which commits introduced its changes;
- which work is related to the Service Desk request;
- which work should be brought into your final result;
- which work should remain separate.

Do not integrate blindly.

Use the repository history as evidence.

---

# Mission 5 — Bring the Work Together

The Service Desk needs the relevant approved documentation changes brought together.

Integrate the appropriate work into your branch.

One of the branches contains a change in the same area you have modified.

A conflict may occur.

If it does:

1. inspect the conflict;
2. understand both versions;
3. decide what the final policy should say based on the business requirement and existing documentation;
4. resolve the conflict intentionally;
5. inspect the result;
6. complete the integration;
7. verify the resulting history.

Do not simply choose one side because Git gives you a button or command for doing so.

---

# Mission 6 — Recovery Test

At this stage, the instructor will deliberately introduce a recovery problem into your local repository.

You will be told only that:

> **A useful piece of work appears to have disappeared from the branch. Find out what happened and recover it without guessing.**

You should investigate using the repository's evidence.

Possible evidence includes:

```text
status
history
log
diff
reflog
```

Do not immediately run a destructive reset.

First determine what happened.

Your recovery method must preserve the work that should remain.

---

# Mission 7 — Remote Awareness

The repository has a remote named `origin`.

Determine:

- what the remote represents;
- where it points;
- what branches exist on the remote;
- whether your branch tracks a remote branch;
- whether your local information is current;
- what would happen if you pushed your branch.

You may push your completed work to the assessment remote when appropriate.

Do not push destructive changes merely to prove that you can push.

---

# Mission 8 — Final Verification

Before declaring the assessment complete, verify:

- the correct branch is checked out;
- the working tree is clean, or any remaining changes are intentional;
- the required policy change exists;
- the relevant service-desk documentation is present;
- the conflict is resolved;
- the recovered work is present;
- no accidental files or secrets were committed;
- the history makes sense;
- the remote relationship is understood;
- your final commits describe the work clearly.

You should be able to prove these statements with repository evidence.

---

# Final Explanation

Explain, in plain language:

1. What was the repository state when you started?
2. What did you change?
3. Why did you create your branch?
4. What commits did you create?
5. Which existing work did you integrate, and why?
6. Did you encounter a conflict?
7. How did you resolve it?
8. What happened during the recovery test?
9. How did you recover the work?
10. What evidence proves the final state is correct?
11. What does the remote represent?
12. What would you do differently if you repeated the task?

---

# Optional Advanced Challenge

If the instructor assigns it, you will receive one additional request involving a **specific existing commit**.

The requirement will be stated in business language rather than as a Git command.

You must determine how to bring only the required change into your branch and then verify the resulting history.

---

# Pass Standard

The assessment is not a test of command memorisation.

The important question is:

> **Could you solve the problem?**

You demonstrate mastery when you can investigate the repository, understand the requirement, choose appropriate Git operations, recover from mistakes and prove that the final state is correct without command-by-command instruction.

---

# Final Reflection

Complete these sentences:

> Before this course, I thought Git was...

> Now I understand Git as...

> When I get stuck, my first step is...

> When I make a mistake, I will...

> When I do not know a command, I will...

> The Git skill I am most confident about is...

> The skill I still need to practise is...
