# SSH Key to be used
resource "aws_key_pair" "master_key" {
  key_name   = "master_key"
  public_key = data.local_file.master_key_pub.content
}

# Get AWS Instance Image information
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}