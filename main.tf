provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "gitea" {
    tags = {
        Name = "gitea-server"
        Type = "Source Control"
        Description = "Managed by Red Hat Deployer"
    }

    root_block_device {
        volume_size = 120
        delete_on_termination = true
    }

    associate_public_ip_address = true #Assign Public EIP to machine

    ami             = data.aws_ami.rhel8.id #Use latest RHEL8 AMI
    instance_type   = var.aws_instance_type
    subnet_id       = var.aws_vpc_subnet_id
    key_name        = aws_key_pair.deployer_key.key_name
}

resource "aws_key_pair" "deployer_key" {
    key_name = "redhat_deployer"
    public_key = file(var.deployer_key_path)
}

