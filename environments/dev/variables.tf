variable "project_name" {
  type        = string
  description = "Prefixo usado no nome de todos os recursos"
}

variable "ami_id" {
  type        = string
  description = "AMI Amazon Linux 2023 da regiao escolhida"
}

variable "key_name" {
  type        = string
  description = "Nome do key pair EC2 ja existente na conta, para acesso SSH"
}

variable "docker_image" {
  type        = string
  description = "Imagem publicada no registry (ex: usuario/app:1.0)"
}

variable "app_port" {
  type    = number
  default = 3000
}

variable "ssh_allowed_cidr" {
  type        = string
  description = "Seu IP publico em formato CIDR, ex: 203.0.113.10/32 — nunca 0.0.0.0/0"
}

variable "tags" {
  type    = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}