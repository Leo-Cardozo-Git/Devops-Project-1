variable "project_name" {
  type        = string
  description = "Prefixo usado no nome do security group"
}

variable "vpc_id" {
  type        = string
  description = "ID da VPC onde o security group sera criado"
}

variable "ssh_allowed_cidr" {
  type        = string
  description = "CIDR permitido para SSH, ex: 203.0.113.10/32 — nunca 0.0.0.0/0"
}

variable "app_port" {
  type        = number
  description = "Porta exposta pela aplicacao em container"
}

variable "tags" {
  type    = map(string)
  default = {}
}