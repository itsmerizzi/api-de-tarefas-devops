provider "aws" {
  region = "us-east-1"
}

# Cria um par de chaves para acesso SSH (opcional)
resource "aws_key_pair" "dev_key" {
  key_name   = "devops-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Cria uma instância EC2 para rodar a API
resource "aws_instance" "api_instance" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (atualize se necessário)
  instance_type = "t2.micro"

  key_name = aws_key_pair.dev_key.key_name

  tags = {
    Name = "api-de-tarefas"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
              sudo yum install -y nodejs git
              git clone https://github.com/seu-usuario/api-de-tarefas-devops.git
              cd api-de-tarefas-devops
              npm install
              node server.js
              EOF
}
