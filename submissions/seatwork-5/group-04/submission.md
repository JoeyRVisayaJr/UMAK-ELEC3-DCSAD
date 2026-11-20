# Seatwork 5 Submission

## About us

- Group number: 4
- Section: IV-DCSAD
- Group IAM user: dcsad-g04
- Table name: umak-elec3-dcsad-g04-messages
- Bucket name: umak-elec3-dcsad-g04-linktree

## Files

- [`template.yaml`](template.yaml): our CloudFormation template
- [`main.tf`](main.tf): our Terraform file

## Questions

1. Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?

The deployment fails and CloudFormation rolls back the new stack. CloudFormation tries to create the table and bucket as new resources, but both names are already used by the resources that we made in the console; DynamoDB table names must be unique in the account and Region, and S3 bucket names are globally unique. The existing table, its messages, and the bucket are left unchanged. We would need to import those existing resources into a stack or give the new resources different names before deploying.

2. Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?

A template records the exact settings in Git, and a Pull Request lets a groupmate review the change before it reaches AWS. A reviewer can catch a wrong name, permission, or tag before it takes effect, and the recorded history shows what changed and lets us restore the earlier version. This serves the Operational Excellence pillar because it makes changes reviewed, traceable, and repeatable.

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| JoaquinLuisGuevarra96 | Wrote and checked `template.yaml`. |
| AJPSJ | Wrote and checked `main.tf`. |
| CharlesTogle | Answered Question 1 about deploying the template over the existing resources. |
| vivrelavie | Answered Question 2 about safer changes and the Well-Architected pillar. |
