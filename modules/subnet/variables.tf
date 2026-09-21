variable "project_name" {
  type        = string
  description = "Prefixo usado no nome da subnet e da route table"
}

variable "vpc_id" {
  type        = string
  description = "ID da VPC onde a subnet sera criada"
}

variable "internet_gateway_id" {
  type        = string
  description = "ID do Internet Gateway, usado na rota publica"
}

variable "public_subnet_cidr" {
  type        = string
  description = "Bloco CIDR da subnet publica, ex: 10.0.1.0/24"
}

variable "availability_zone" {
  type        = string
  description = "AZ onde a subnet sera criada, ex: us-east-1a"
}

variable "tags" {
  type    = map(string)
  default = {}
}