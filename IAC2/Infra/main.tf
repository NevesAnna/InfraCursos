terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.regiao_aws
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = var.instancia
  key_name = var.chave
  tags = {
    Name = "TerraformAnsible22"
  }
}
resource "aws_key_pair" "chavesSSH" {
    key_name = var.chave
    public_key = file("${var.chave}.pub")
  
}
output "IP_Publico" {
  value = aws_instance.app_server.public_ip  
}