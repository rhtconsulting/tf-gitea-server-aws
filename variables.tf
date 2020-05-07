variable "aws_region" {
    type = string
    description = "AWS Target Region. Example: us-gov-west-1, us-west-2"
    default = "us-west-2"
}

variable "aws_vpc_subnet_id" {
    type = string
    description = "Target Subnet for server deployment"
}

variable "aws_instance_type" {
    type = string
    description = "EC2 Instance Type"
    default = "m5.xlarge" # This will typically support a medium-large deploymnet with 100+ users.
}

variable "aws_keypair_name" {
    type = string
    description = "Name of managed AWS Keypair"
    default = "redhat-deployer"
}