# AWS LightSail

-   vm
-   database
-   load balancer
-   containers
-   storage buckets
-   CDN

### Usefull Commands

```bash

export AWS_PAGER=""

### Availability Zones
aws ec2 describe-availability-zones --region eu-central-1


### Instance types
aws lightsail get-bundles
aws lightsail get-bundles | jq


### BluePrints

aws lightsail get-blueprints | jq '.blueprints[] | select(.name | contains("Node"))'
```
