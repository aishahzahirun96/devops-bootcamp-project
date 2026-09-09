data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

resource "aws_ecr_repository" "app_repo" {
  name                 = "devops-bootcamp/final-project-aishah"
  image_tag_mutability = "MUTABLE"
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = module.vpc.public_subnets[0]
  private_ip             = "10.0.0.5"
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ssm_profile.name
  key_name               = "aishahzahirun96-server"
  tags = { Name = "web server" }

  root_block_device {
    volume_type = "gp3"
    volume_size = 12
    encrypted   = true
  }

}

resource "aws_eip" "web_eip" {
  instance = aws_instance.web.id
  domain   = "vpc"
}

resource "aws_instance" "controller" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = module.vpc.private_subnets[0]
  private_ip             = "10.0.0.135"
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ssm_profile.name
  key_name               = "aishahzahirun96-server"
  tags = { Name = "Ansible controller" }

  root_block_device {
    volume_type = "gp3"
    volume_size = 12
    encrypted   = true
  }

}


resource "aws_instance" "monitoring" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = module.vpc.private_subnets[0]
  private_ip             = "10.0.0.136"
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ssm_profile.name
  key_name               = "aishahzahirun96-server"
  tags = { Name = "monitoring server" }
  
  root_block_device {
    volume_type = "gp3"
    volume_size = 20
    encrypted   = true
  }

}