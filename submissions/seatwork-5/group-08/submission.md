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

- Group number: Group 8
- Section: IV - DCSAD
- Group IAM user: dcsad-g08
- Table name: umak-elec3-dcsad-g08-messages
- Bucket name: umak-elec3-dcsad-g08-linktree

## Files

- [`template.yaml`](template.yaml): our CloudFormation template
- [`main.tf`](main.tf): our Terraform file

## Questions

1. Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?

```
The CloudFormation deployment would fail because the DynamoDB table and S3 bucket already exist and were originally created outside CloudFormation. CloudFormation does not automatically take ownership of existing resources just because their names match the resources declared in a template. It would attempt to create the resources, but AWS would reject the creation because those names are already in use by the existing resources. To manage them through CloudFormation, we would need to use resource import or another appropriate migration approach instead of simply deploying the template.
```

2. Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?

```

A change written in a template and reviewed through a Pull Request is safer because other group members can inspect the configuration and identify mistakes before it is applied. The change is also recorded in Git, making it easier to track and review previous modifications. This supports the **Operational Excellence** pillar of the AWS Well-Architected Framework because it promotes controlled, repeatable, and reviewable operations.
```

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| micmiccc16 | Created and reviewed the CloudFormation template.|
| jdyyy1 | Created and reviewed the Terraform configuration. |
| shaeluh | Reviewed the submission files and prepared the GitHub Pull Request.| 
| MarcoLasaga | Answered the Infrastructure as Code questions and checked resource settings.| 
