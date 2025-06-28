variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "ami_id" {
  description = "AMI ID para a instância EC2"
  type        = string
  default     = "ami-020cba7c55df1f615"  # Ubuntu us-east-1 x86_64
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "ID da Subnet onde a instância será criada"
  type        = string
  default     = "subnet-06b920c294c5629f8"
}

variable "key_name" {
  description = "Nome da chave SSH criada no AWS (EC2 Key Pair)"
  type        = string
  default     = "ansible"  # coloque o nome da sua chave criada no AWS aqui
}
