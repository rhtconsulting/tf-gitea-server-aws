# Red Hat Terraform Gitea Module (AWS)

This Terraform module is for deploying a single gitea server.

# Inputs

`aws_region`: Target region for instance deployment
`aws_vpc_subnet_id`: Target Subnet for instance deployment
`aws_instance_type`: Type of EC2 instance to deploy
`aws_keypair_name`: Name of AWS managed keypair to authorize access to the instance