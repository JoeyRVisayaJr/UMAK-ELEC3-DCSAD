# Seatwork 5 Submission

## About us

- Group number: 1
- Section: IV-DCSAD
- Group IAM user: dcsad-g01
- Table name: umak-elec3-dcsad-g01-messages
- Bucket name: umak-elec3-dcsad-g01-linktree

## Files

- [`template.yaml`](template.yaml): our CloudFormation template
- [`main.tf`](main.tf): our Terraform file

## Questions

1. Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?

CloudFormation would fail to create the DynamoDB table and S3 bucket because resources with those names already exist. CloudFormation does not automatically adopt existing resources. To manage them using CloudFormation, we would need to import the existing resources into a stack.

2. Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?

A change written in a template and reviewed through a Pull Request is safer because groupmates can review the changes before they are applied. It also provides version history, making changes easier to track, audit, and reproduce. This supports the Operational Excellence pillar of the AWS Well-Architected Framework.

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| jhonemarss | Created `template.yaml` and `main.tf`, and prepared `submission.md` |
| jeanleee29 | Reviewed the files |