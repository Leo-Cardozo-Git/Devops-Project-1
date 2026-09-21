variable "project_name" {
  type        = string
  description = "Prefixo usado no nome da instancia"
}

variable "ami_id" {
  type        = string
  description = "AMI Amazon Linux 2023 da regiao escolhida"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instancia, ex: t3.micro"
}

variable "subnet_id" {
  type        = string
  description = "ID da subnet publica onde a instancia sera criada"
}

variable "security_group_id" {
  type        = string
  description = "ID do security group a ser anexado a instancia"
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
  type        = number
  description = "Porta exposta pela aplicacao em container"
}

variable "tags" {
  type    = map(string)
  default = {}
}