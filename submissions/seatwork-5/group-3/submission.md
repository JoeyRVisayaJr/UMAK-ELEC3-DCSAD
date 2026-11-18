# Seatwork 5 Submission

## About us

- Group number: 3
- Section: DCSAD
- Group IAM user: dcsad-g03
- Table name: umak-elec3-dcsad-g03-messages
- Bucket name: umak-elec3-dcsad-g03-linktree

## Files

- `template.yaml`: our CloudFormation template
- `main.tf`: our Terraform file

## Questions

1. **Suppose that our group user could create stacks, and we ran `aws cloudformation deploy` with our template today. What happens, and why?**

   The stack deployment **fails and rolls back** (`ROLLBACK_COMPLETE` / `CREATE_FAILED`) with `AlreadyExists` errors because both `umak-elec3-dcsad-g03-messages` (from Lab 4) and `umak-elec3-dcsad-g03-linktree` (from Seatwork 3) already exist in AWS. Since our group created those resources manually in the AWS Console rather than through CloudFormation, CloudFormation has no record of them in its stack state—so when it attempts to create new resources with those exact unique names, AWS rejects the duplicate names and rolls back the stack.

2. **Why is a change written in a template and reviewed in a Pull Request safer than the same change made in the console? Which Well-Architected pillar does it serve?**

   - **Why it is safer:** Writing infrastructure changes in a template and reviewing them in a Pull Request lets teammates inspect the exact configuration diff before deployment—catching typos, misconfigurations, or overly permissive policies early—while maintaining version control and a clear Git audit trail that can be cleanly rolled back, rather than making unreviewed, error-prone manual clicks directly in the live console.
   - **Well-Architected Pillar:** **Operational Excellence** (and also supports **Reliability** and **Security**).

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| @Vinjin2705 | Wrote `template.yaml` (CloudFormation) and `main.tf` (Terraform) for Group 3 (`dcsad-g03`), completed `submission.md`, and submitted the Pull Request and Google Form for the group. |
| @abulotano | Checked YAML and HCL indentation, resource properties, and `course`/`group` tags, and verified that no access keys, invoke URLs, or account numbers appear in any file. |
| @plngpc | Reviewed the answers to Questions 1 and 2 and verified the S3 static website, Public Access Block, and bucket policy configurations against Seatwork 3 and Lab 4. |
