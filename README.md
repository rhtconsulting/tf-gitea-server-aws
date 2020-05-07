# Red Hat Terraform Gitea Module (AWS)

This Terraform module is for deploying a single gitea server.

# Inputs

- `aws_region`: Target region for instance deployment
- `aws_vpc_subnet_id`: Target Subnet for instance deployment
- `aws_instance_type`: Type of EC2 instance to deploy
- `aws_keypair_name`: Name of AWS managed keypair to authorize access to the instance

# How to Use

1. [Properly Configure AWS Access Credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
2. [Install Terraform v0.12+](https://learn.hashicorp.com/terraform/getting-started/install.html)
3. Clone Repository and Apply the terraform module:


This terraform module is designed to only handle the security group and instance deployment of a singular gitea server instance on AWS.

```
git clone git@github.com:rhtconsulting/tf-redhat-keypair-aws.git
terraform apply
```

Alternatively, you can use this repository as a terraform module in a larger terraform plan and project.