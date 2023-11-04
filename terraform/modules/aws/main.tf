resource "aws_instance" "dev_resources" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.xlarge"
  key_name = aws_key_pair.master_key.key_name
  vpc_security_group_ids = [aws_security_group.permitir_ssh_http.id]

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 75
    volume_type = "gp2"
  }
}

resource "aws_security_group" "permitir_ssh_http" {
  name        = "permitir_ssh_http"
  description = "Permite SSH e HTTP na instancia EC2"

  ingress {
    description = "SSH to EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP to EC2"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS to EC2"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "permitir_ssh_e_http"
  }
}