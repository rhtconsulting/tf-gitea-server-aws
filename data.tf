data "aws_ami" "rhel8" {
  most_recent = true
  owners = ["309956199498"] # Red Hat

  filter {
      name   = "name"
      values = ["RHEL*"] # Pulls latest verison of RHEL
  }

  filter {
      name   = "virtualization-type"
      values = ["hvm"]
  } 

  filter {
      name   = "architecture"
      values = ["x86_64"]
  }
  # Note: could add ebs block device filter to ensure it is ebs based, but realistically hvm virt type is already getting us the right type of machine template.
}