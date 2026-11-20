# Lab 3: VPC Subnet Planning Case Study

**Group:** Group 1  
**Section:** IV-DCSAD  
**Client:** A school canteen ordering app  
**VPC CIDR Block:** `10.66.0.0/17`

---

## Task 1: Divide the VPC into Four Equal Subnets

**Given:** VPC CIDR block `10.66.0.0/17`

We need to divide the VPC into four equal-sized subnets.

**Solution:**

- Required number of subnets: 4
- Additional subnet bits: 2, because \(2^2 = 4\)
- New prefix: `/17 + 2 = /19`
- Host bits: \(32 - 19 = 13\)
- Total addresses per subnet: \(2^{13} = 8,192\)
- Usable addresses per subnet: \(8,192 - 5 = 8,187\)

| Subnet | CIDR Block | First Address | Last Address | Usable Addresses | Usable IP Range |
|---|---|---|---|---:|---|
| 1 | `10.66.0.0/19` | `10.66.0.0` | `10.66.31.255` | 8,187 | `10.66.0.4` – `10.66.31.254` |
| 2 | `10.66.32.0/19` | `10.66.32.0` | `10.66.63.255` | 8,187 | `10.66.32.4` – `10.66.63.254` |
| 3 | `10.66.64.0/19` | `10.66.64.0` | `10.66.95.255` | 8,187 | `10.66.64.4` – `10.66.95.254` |
| 4 | `10.66.96.0/19` | `10.66.96.0` | `10.66.127.255` | 8,187 | `10.66.96.4` – `10.66.127.254` |

**Five AWS-reserved addresses in Subnet 1:**

1. `10.66.0.0` – Network address
2. `10.66.0.1` – Reserved for the VPC router
3. `10.66.0.2` – Reserved for DNS
4. `10.66.0.3` – Reserved for future use
5. `10.66.31.255` – Network broadcast address

**Answer:** The VPC can be divided into four equal `/19` subnets, each containing 8,187 usable IP addresses under AWS subnet reservation rules.

---

## Task 2: Find the 15th Subnet Using /23

**Given:**
- VPC CIDR block: `10.66.0.0/17`
- Required subnet prefix: `/23`
- Subnet number: 15

**Solution:**

- Difference in prefix lengths: \(23 - 17 = 6\)
- Number of `/23` subnets: \(2^6 = 64\)
- Total addresses per `/23`: \(2^{32-23} = 512\)
- Usable addresses per subnet: \(512 - 5 = 507\)
- Block size: 2 in the third octet

To calculate the 15th subnet:

\[
(15-1)\times512=7,168
\]

\[
7,168\div256=28
\]

**Answer:**

- 15th subnet: `10.66.28.0/23`
- First address: `10.66.28.0`
- Last address: `10.66.29.255`
- Usable IP range: `10.66.28.4` – `10.66.29.254`
- Usable addresses: 507

**Last `/23` subnet in the VPC:** `10.66.126.0/23`

---

## Task 3: Plan Private and Public Subnets

**Given:**
- VPC CIDR block: `10.66.0.0/17`
- Private subnet requirement: 2,975 usable IP addresses each
- Public subnet requirement: 2,149 usable IP addresses each

**Solution:**

A `/21` subnet provides:

\[
2^{11}-5=2,043\text{ usable addresses}
\]

This is insufficient for both requirements.

A `/20` subnet provides:

\[
2^{12}-5=4,091\text{ usable addresses}
\]

Therefore, `/20` is the smallest suitable subnet size for both private and public subnets.

**Proposed subnet allocation:**

| Subnet Name | CIDR Block | Availability Zone | Usable Addresses |
|---|---|---|---:|
| private-a | `10.66.0.0/20` | ap-southeast-1a | 4,091 |
| private-b | `10.66.16.0/20` | ap-southeast-1b | 4,091 |
| public-a | `10.66.32.0/20` | ap-southeast-1a | 4,091 |
| public-b | `10.66.48.0/20` | ap-southeast-1b | 4,091 |

**Answer:** Four `/20` subnets are sufficient to meet the required private and public IP address capacities. The proposed CIDR blocks do not overlap and are within the VPC CIDR range.

---

## Task 4: Evaluate the Proposed CIDR Blocks

**Given VPC:** `10.66.0.0/17`

The Task 3 subnet allocations occupy the following ranges:

- `10.66.0.0/20`
- `10.66.16.0/20`
- `10.66.32.0/20`
- `10.66.48.0/20`

**Evaluation:**

| Proposal | CIDR Block | Valid? | Explanation |
|---|---|---|---|
| P1 | `10.66.8.0/21` | No | Overlaps with `10.66.0.0/20` (private-a). |
| P2 | `10.66.128.0/19` | No | Outside the VPC range. The VPC ends at `10.66.127.255`. |
| P3 | `10.66.96.0/20` | Yes | Within the VPC, correctly aligned to a `/20` boundary, and does not overlap the Task 3 subnets. |
| P4 | `10.66.86.191/20` | No | Not a valid `/20` network address because it is not aligned to a `/20` boundary. Its containing network is `10.66.80.0/20`. |

**Answer:**

Only Proposal P3 (`10.66.96.0/20`) is valid. It is within the VPC CIDR range, properly aligned, and does not overlap with the four subnets proposed in Task 3.

---

## Conclusion

The VPC subnet plan uses appropriate CIDR blocks to meet the requirements for equal subnet