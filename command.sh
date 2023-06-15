#!/bin/bash

# Read private IP from info.json
private_ip=$(jq -r '.Instances[0].PrivateIpAddress' info.json)

# Update the private IP in terraform.tf
sed -i "s/ec2-private_ip/$ec2_private_ip/" terraform.tf

echo "Private IP address updated in terraform.tf."

