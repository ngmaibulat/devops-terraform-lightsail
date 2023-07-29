#!/bin/bash


terraform init
terraform fmt
terraform apply --auto-approve


# Get the IP address of the instance
export IP=$(terraform output -raw ip)

ssh-keygen -R $IP

ssh-keyscan -H $IP >> ~/.ssh/known_hosts

echo -e "\n\nIP: $IP \n\n"

# alias up="ssh -i  ~/.ssh/LightsailDefaultKey-eu-central-1.pem bitnami@$IP"

alias up="ssh bitnami@$IP"

alias tf="terraform"
alias destroy="terraform destroy --auto-approve"
