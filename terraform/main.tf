provider "aws" {
  region     = var.aws_region         # Região AWS (ex: us-east-1)
  access_key = var.aws_access_key     # Sua Access Key AWS (sensível)
  secret_key = var.aws_secret_key     # Sua Secret Key AWS (sensível)
}

resource "aws_instance" "minha_instancia" {
  ami                         = var.ami_id              # Imagem Ubuntu
  instance_type               = var.instance_type       # Tipo da instância (ex: t3.micro)
  subnet_id                   = var.subnet_id           # Subnet onde vai ficar a instância
  associate_public_ip_address = true                    # Quer IP público
  key_name                    = var.key_name            # Nome do par de chaves SSH já criado na AWS

  tags = {
    Name = "Terraform-Example"
  }
}
