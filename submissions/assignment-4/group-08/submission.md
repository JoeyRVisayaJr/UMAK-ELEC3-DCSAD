# Assignment 4 Submission

<!--
How to use this template:

1. Copy this file to submissions/assignment-4/group-<number>/submission.md
2. Replace every <answer> with your group's answer. Delete the angle brackets too.
3. Write GitHub usernames, not full names or student numbers.
-->

## About us

- Group number: dcsad-g08
- Section: DCSAD

## Estimate 1: the Lab 4 endpoint

Asia Pacific (Singapore), 1 million requests a month: 800,000 GET and 200,000 POST.

| Service | Settings | Monthly cost (USD) |
| --- | --- | --- |
| Amazon API Gateway | HTTP API, 1 million requests, 1 KB each | 1.25 |
| AWS Lambda | Without Free Tier, x86, 1,000,000 requests, 100 ms, 128 MB | 0.41 |
| Amazon DynamoDB | On-demand, Standard, 1 GB, 1 KB items, 0.2 million writes, 0.8 million eventually consistent reads | 0.48 |
| **Total** | | 2.14 |

## Estimate 2: the Lab 2 setup

| Service | Settings | Monthly cost (USD) |
| --- | --- | --- |
| Amazon EC2 | 1 `t3.micro`, Linux, On-Demand, 100% utilization, 8 GB gp3, detailed monitoring on | 12.51 |

Share link of our estimate: https://calculator.aws/#/estimate?id=c211b53559ca24e762d96bb410fb7298295b9f9b

## Question

In a month with no requests at all, which costs remain in each setup, and why?

In a month with no requests at all, the Lab 4 serverless setup leaves only the DynamoDB storage charge for the 1 GB of retained data, while API Gateway, Lambda, and DynamoDB read/write charges drop to $0.00 because those services bill strictly per request and compute duration. In contrast, the Lab 2 EC2 setup retains its full monthly cost—including the hourly compute charge for the t3.micro instance, the 8 GB gp3 EBS volume storage, and detailed monitoring—because dedicated instances and attached storage bill continuously for provisioned uptime regardless of incoming traffic.

## Recommendation

Five sentences. Which setup fits the Lab 4 message API at 1 million requests a month, and why? Use our two totals, our answer to the question, and the work that each setup needs from our group.

The Lab 4 serverless setup is the better fit for the message API at 1 million requests per month because its total estimated cost of $[Lab 4 Total]** is significantly lower than the **$[Lab 2 Total] required to run the Lab 2 EC2 setup. Furthermore, as shown in the zero-traffic comparison, the serverless architecture scales its cost down to near zero during idle periods, whereas the EC2 instance forces us to pay full price for idle server hours and attached EBS storage. Beyond cost savings, the serverless stack removes the operational overhead of OS patching, runtime maintenance, and capacity planning that our group would have to manage on a Linux EC2 instance. API Gateway, Lambda, and on-demand DynamoDB also absorb sudden traffic bursts automatically, whereas a single t3.micro instance risks throttling or slow response times during spikes unless we configure and maintain scaling rules. Overall, the serverless endpoint delivers lower monthly expenses, zero idle waste, and minimal infrastructure maintenance for our group. 

## Contribution

| GitHub username | What this groupmate did |
| --- | --- |
| jdyyy1 | Configured all four AWS Pricing Calculator services (API Gateway, Lambda, DynamoDB, EC2), verified pricing parameters, drafted the analysis and recommendation, and created the Pull Request |
| micmiccc16 | Reviewed the AWS Pricing Calculator parameters against the assignment specifications and verified the generated share link |
| MarcoLasaga | Proofread the submission.md answers for clarity, formatting, and adherence to the five-sentence constraint. |
| shaeluh | Cross-checked the cost figures in the submission table and confirmed repository folder/branch naming guidelines |
