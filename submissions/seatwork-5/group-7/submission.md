# Seatwork 5 Submission

<!--
How to use this template:

1. Copy this file to submissions/seatwork-5/group-<number>/submission.md
2. Replace every <answer> with your group's answer. Delete the angle brackets too.
3. Save template.yaml and main.tf in the same folder.
4. Do not put an access key, a password, an invoke URL, or the AWS account number in any file.
5. Write GitHub usernames, not full names or student numbers.
-->

## About us

- Group number: 7
- Section: IV-DCSAD
- Group IAM user: dcsad-g07
- Table name: umak-elec3-dcsad-g07-messages
- Bucket name: umak-elec3-dcsad-g07-linktree

## Files

- [`template.yaml`](template.yaml): our CloudFormation template
- [`main.tf`](main.tf): our Terraform file

## Questions

1. Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?

   The deployment would fail with a resource conflict error (`ResourceAlreadyExistsException` or `ResourceConflictException`). CloudFormation expects to create and manage the lifecycle of declared resources from inception; because both `umak-elec3-dcsad-g07-messages` and `umak-elec3-dcsad-g07-linktree` already exist in the AWS account from earlier console activities, CloudFormation cannot create duplicate resources. Consequently, stack creation fails (`CREATE_FAILED`) and initiates an automatic rollback (`ROLLBACK_IN_PROGRESS`), deploying no changes.

2. Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?

   Writing infrastructure changes in code and reviewing them through a Pull Request provides automated validation, peer review, and a complete version-controlled audit trail before changes reach production. Manual console clicks are prone to human errors, untracked changes, and configuration drift, whereas Infrastructure as Code ensures repeatable, deterministic, and easily revertible deployments. This serves the **Operational Excellence** pillar of the AWS Well-Architected Framework.

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| TroyMichaelCamarillo | Authored CloudFormation template (`template.yaml`) with DynamoDB table, S3 bucket, and tags |
| ichannnj | Authored Terraform configuration (`main.tf`) with resource blocks, website hosting, and bucket policy |
| CPCNarido | Formulated response for Question 1 on CloudFormation stack creation conflicts and rollbacks |
| Motea47 | Formulated response for Question 2 on Well-Architected Operational Excellence and reviewed template syntax |
