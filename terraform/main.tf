provider "aws" {
  region = "ap-south-1"
}

# Get existing security group by name
data "aws_security_group" "linux_sg" {
  filter {
    name   = "group-name"
    values = ["LinuxServer"]
  }
}

resource "aws_instance" "netflixops" {
  ami           = "ami-02b8269d5e85954ef" # Ubuntu 22.04 (ap-south-1)
  instance_type = "t2.micro"
  key_name      = "linux1"

  vpc_security_group_ids = [
    data.aws_security_group.linux_sg.id
  ]

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }

  tags = {
    Name = "NetflixOps-Server"
  }
}

output "public_ip" {
  value = aws_instance.netflixops.public_ip
}

