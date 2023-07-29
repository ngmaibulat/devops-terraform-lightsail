# AWS LightSail

-   vm
-   database
-   Storage: buckets
-   Net: CDN, Load balancer, Static IP
-   Containers

### Resource References

-   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_database
-   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_bucket
-   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_distribution
-   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip
-   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_lb
-   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_lb_https_redirection_policy

### Todo

-   create resources
-   make modules
-   create tests
-   simple Ansible integration

### Databases

-   LightSail MySQL
-   LightSail Postgres
-   RDS
-   CockroachDB
-   Run migrations

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


### Databases

aws lightsail get-relational-database

aws lightsail get-relational-database-blueprints

aws lightsail get-relational-database-bundles

aws lightsail get-relational-database-events

aws lightsail get-relational-database-log-events

aws lightsail get-relational-database-log-streams

aws lightsail get-relational-database-master-user-password

aws lightsail get-relational-database-metric-data

aws lightsail get-relational-database-parameters

aws lightsail get-relational-database-snapshot

aws lightsail get-relational-database-snapshots

aws lightsail get-relational-databases

### Storage Buckets

aws lightsail get-bucket-bundles | jq

```
