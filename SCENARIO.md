# PaakowTronics Service Desk — Assessment Scenario

PaakowTronics operates an internal Service Desk that records support incidents, publishes operating procedures and routes customer-facing issues.

The team is moving its documentation into Git. Several support staff have been working independently:

- a knowledge-base contributor added an account-lockout procedure;
- a maintenance contributor added a queue-cleanup note;
- a customer-portal contributor changed the priority policy and added routing documentation;
- a portal hotfix contributor prepared a status procedure and an incident ticket.

The work was not developed in one perfectly coordinated sequence.

One customer-portal commit contains a **questionable policy shortcut**: it makes the identity or role of the requester affect priority. That conflicts with the service-desk principle that priority is determined by business impact. The learner must discover this from the history rather than being told which Git operation to use.

The learner also has a manager's request to clarify P2 policy. Their own change overlaps the customer-portal work, creating a realistic opportunity for a merge conflict.

Later, the instructor introduces a small recovery incident in the learner's local repository. Useful work is made unreachable from the current branch tip but remains recoverable through Git's local history.

Finally, the learner is given a focused integration request involving one commit from the portal hotfix work, without being told the name of the Git operation that is appropriate.

## What this scenario is testing

The assessment is designed to reveal whether the learner can:

- enter an unfamiliar repository and establish its state;
- read project documentation before changing it;
- create isolated work without being told an exact branch name;
- inspect branch history rather than trusting branch names;
- distinguish relevant, irrelevant and questionable changes;
- integrate another person's work deliberately;
- resolve a conflict according to the business requirement;
- avoid or remove an incorrect change;
- recover apparently lost work;
- understand local and remote branch relationships;
- bring one specific change from a larger line of work;
- verify the final repository and explain what happened.
