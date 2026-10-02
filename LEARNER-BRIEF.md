# Git Essentials — Final Mastery Challenge

## PaakowTronics Service Desk

This is the final practical assessment for Git Essentials.

You are working as a support engineer in a fictional PaakowTronics Service Desk repository. Your job is not to demonstrate that you remember Git commands. Your job is to demonstrate that you can **investigate a repository, make a safe change, integrate other people's work, recover from a mistake and prove the final state**.

## Rules

You may use:

- the repository documentation;
- Git's built-in help;
- official Git documentation;
- normal terminal documentation;
- your Git Essentials course notes;
- your own previous work.

You may ask the instructor to clarify the **business requirement**. You should not ask:

> “What exact Git command should I type?”

If you do not remember Git syntax, look it up. That is part of the assessment.

There is more than one valid way to solve several parts of this assessment. Your explanation and the resulting repository state matter.

---

# Mission 1 — Establish the Situation

You have just joined the Service Desk team and have been given the repository.

**Do not change anything yet.**

Establish the repository's current situation. Find out:

- where you are;
- whether this is a Git repository;
- what branch you are on;
- whether the working tree is clean;
- what recent history looks like;
- what other branches or branch references are available;
- what remote repository is configured.

Write a short note for yourself describing what you found.

Do not assume that a branch name tells you everything about its contents.

---

# Mission 2 — Understand Before Editing

Read the repository documentation before changing it.

Determine:

- what the repository is for;
- how the documentation and tickets are organised;
- how priority is currently defined;
- what the service-desk policy says about priority and escalation;
- what a normal documentation change should look like in this repository.

You are being assessed on whether you can understand an existing project before making changes to it.

---

# Mission 3 — Manager's Policy Request

The Service Desk manager has asked for this clarification:

> **P2 should clearly cover a major internal team being blocked from an important function and a significant degradation of a customer-facing service. Priority must be based on business impact rather than the identity or job title of the person who submitted the ticket.**

Implement the request.

Do not work directly on the long-lived baseline branch. Create an appropriate isolated line of work yourself.

Before committing, inspect what you changed and make sure unrelated files have not been modified.

Create a meaningful commit that explains the change.

Do not ask the instructor what branch name or commit message to use.

---

# Mission 4 — Investigate the Work of Other Staff

You have been told that several other support staff have already worked on the repository.

Investigate the available branch history.

For each branch that appears relevant, determine:

- what problem the branch was trying to solve;
- which commits introduced the work;
- which files changed;
- whether the work is useful to the manager's request;
- whether any part of the work is questionable or inconsistent with the existing policy;
- which work should remain separate.

Do not merge everything simply because it exists.

Your investigation should give you enough evidence to decide what should and should not enter your final result.

---

# Mission 5 — Integrate the Appropriate Work

The Service Desk wants the relevant customer-portal documentation included in the final result, but it does **not** want an incorrect policy rule simply because it was committed by another team member.

Bring together the work that belongs in the final result.

Your own policy change overlaps with work in the customer-portal history. A conflict is expected if you integrate the histories in a suitable way.

If a conflict occurs:

1. inspect what Git is telling you;
2. understand both versions;
3. compare them with the business requirement and the existing project policy;
4. keep the correct business meaning;
5. remove contradictory or duplicate policy language;
6. finish the integration deliberately;
7. inspect the resulting history and files.

Do not resolve a conflict by automatically choosing one side.

A successful result is more important than following one prescribed command sequence.

---

# Mission 6 — Recovery Incident

Stop here and call the instructor.

The instructor will deliberately introduce a small incident into your local repository.

You will be told only this:

> **A useful piece of work was visible earlier, but it now appears to have disappeared from the current branch. Find out what happened and recover it without guessing.**

Investigate the evidence available in the repository.

Do not immediately perform another destructive operation.

Your goal is to determine:

- what changed;
- what happened to the work;
- whether the work can still be found;
- how to restore the useful change without destroying the work you already completed.

After recovery, verify the resulting files and history.

---

# Mission 7 — Understand the Remote

The repository has a configured remote.

Determine:

- what the remote represents;
- where it points;
- what branch information exists there;
- whether your current branch tracks anything;
- whether your local information is current;
- what would happen if you pushed your completed work.

You may push your completed work to the assessment remote if appropriate.

Do not push destructive changes simply to prove that you can push.

---

# Mission 8 — Focused Change Request

Management now asks for one specific item from the portal hotfix work:

> **Bring the portal incident ticket into your completed line of work. Do not bring the rest of the portal hotfix changes with it unless you can justify why they are required.**

Determine how to accomplish that request from the repository history.

You are deliberately not being told which Git feature to use.

Inspect the result and verify that you brought in the intended change rather than an unrelated collection of commits.

---

# Mission 9 — Final Verification

Before you declare the assessment complete, prove that:

- the correct branch is checked out;
- the working tree is clean, or remaining changes are intentional and explained;
- the manager's P2 clarification exists;
- priority is still based on business impact;
- the incorrect requester-role shortcut is not part of the final policy;
- the relevant customer-portal documentation is present;
- the recovery work is present;
- the requested portal incident ticket is present;
- there are no unresolved conflict markers;
- no accidental files or secrets were committed;
- the history is understandable;
- you understand the relationship between your local branch and the remote.

Use repository evidence to support your conclusions.

---

# Final Explanation

Give the instructor a short explanation in your own words:

1. What did the repository look like when you started?
2. Which branches did you investigate and why?
3. Which work did you choose to integrate?
4. Which work did you deliberately leave out, and why?
5. What caused the conflict, if one occurred?
6. How did you recover the apparently lost work?
7. How did you bring in the requested portal incident ticket?
8. What evidence proves that the final repository is correct?

The assessment is complete only when you can explain the repository rather than merely show that commands were executed.
