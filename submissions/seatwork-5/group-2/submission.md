# Seatwork 5 Submission

## About us

- Group number: 2
- Section: IV-DCSAD
- Group IAM user: dcsad-g02
- Table name: umak-elec3-dcsad-g02-messages
- Bucket name: umak-elec3-dcsad-g02-linktree

## Files

- `template.yaml`: our CloudFormation template
- `main.tf`: our Terraform file

## Questions

1. Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?

   It would fail. We already made the table and the bucket by hand in the console, and CloudFormation can't create something whose name is already taken.
   The stack would roll back, and our existing table and bucket would stay exactly as they are, because rollback only removes what the stack itself created.

3. Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?

   Someone can check the change before it goes live, and Git keeps a history, so if something breaks we can see what changed and undo it.
   A console click happens instantly, with no review and no record. This serves the Operational Excellence pillar.

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| mmanzanilloa12241800-sudo | Created the main.tf, helped create template.yaml, helped answer the questions |
| Zanis3 | Created template.yaml |
| johnlenardtaligatos16 | Answered the questions |
