# Lab 2 Submission

## Instance Tracking

**First Instance**

- Instance ID: i-0c39ad6cc5b3aaae0
- Availability Zone: apse1-az2 (ap-southeast-1a)

**Second Instance**

- Instance ID: i-03809d0d8e8dc233d
- Availability Zone: apse1-az1 (ap-southeast-1b)

## Proof (Screenshots)

1. **Activity History:** Add a screenshot showing the Auto Scaling group's Activity history when the second instance launched.

2. **CloudWatch Alarm:** Add a screenshot of the target tracking alarm in the "In alarm" state.

## Questions

1. Why did the group stop at 2 instances? The Auto Scaling Group stopped at 2 instances because its maximum capacity was configured to 2. Even when CPU utilization remained high, AWS could not launch additional instances beyond that limit.
2. Why did terminating an instance by hand not remove the cost? Manually terminating an instance managed by the Auto Scaling Group did not permanently reduce the group's capacity. Auto Scaling detected that the actual number of instances was below the desired capacity and launched a replacement. The replacement instance could still incur charges while running.
3. Why is the target value set to your assigned value 30 percent instead of 99 percent? The target was set to 30% to make Auto Scaling respond before CPU utilization becomes too high. This helps maintain performance and gives the group time to launch additional instances before the existing instance becomes overloaded.
4. What did the automatic cutoff protect us from? The automatic cutoff protected us from leaving AWS resources running unintentionally. It helped prevent unnecessary resource usage and unexpected AWS charges if we forgot to stop or delete our lab resources.
5. What changes when a load balancer sits in front of the group? A load balancer distributes incoming traffic among the available EC2 instances instead of sending all requests to a single instance. It can also perform health checks and route traffic only to healthy instances. This improves availability and helps distribute workloads more evenly.
