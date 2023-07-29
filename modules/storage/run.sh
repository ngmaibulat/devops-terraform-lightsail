#!/bin/bash


terraform init
terraform fmt
terraform apply --auto-approve


alias tf="terraform"
alias destroy="terraform destroy --auto-approve"
