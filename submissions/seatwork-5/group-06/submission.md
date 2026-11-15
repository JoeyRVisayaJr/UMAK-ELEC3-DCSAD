# Seatwork 5 Submission

## About us

- Group number: 06
- Section: IV-DCSAD
- Group IAM user: dcsad-g06
- Table name: umak-elec3-dcsad-g06-messages
- Bucket name: umak-elec3-dcsad-g06-linktree

## Files

- [`template.yaml`](template.yaml): our CloudFormation template
- [`main.tf`](main.tf): our Terraform file

## Questions

1. Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?

The deployment will fail and CloudFormation will roll back the stack creation because resources with those exact physical names (`umak-elec3-dcsad-g06-messages` in DynamoDB and `umak-elec3-dcsad-g06-linktree` in S3) already exist in our AWS account. CloudFormation cannot automatically adopt pre-existing resources created manually in the console during a new stack creation, so AWS rejects the duplicate names (`ResourceExistenceCheck` / `AlreadyExistsException` / `BucketAlreadyOwnedByYou`).

2. Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?

Writing infrastructure changes in a template and reviewing them in a Pull Request prevents accidental misconfigurations through peer review, provides a clear Git audit trail of who changed what and why, and allows consistent, repeatable rollouts or rollbacks without human click errors[cite: 12]. This directly serves the **Operational Excellence** pillar of the AWS Well-Architected Framework (performing operations as code and making frequent, small, reversible changes).

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| astennue | Authored the complete CloudFormation (`template.yaml`) and Terraform (`main.tf`) configurations, drafted the technical answers in `submission.md`, and managed the Git branch and Pull Request[cite: 13, 14] |
| micasanf | Reviewed `template.yaml` indentation, resource properties, and cost-allocation tags |
| JayveeOnUni | Checked `main.tf` S3 bucket policy rules and `depends_on` resource ordering[cite: 14] |
| morense-umak | Verified file naming conventions, repository paths, and final submission formatting |