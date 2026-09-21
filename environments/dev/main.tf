module "vpc" {
  source       = "../../modules/vpc"
  project_name = var.project_name
  cidr_block   = "10.0.0.0/16"
  tags         = var.tags
}

module "subnet" {
  source              = "../../modules/subnet"
  project_name        = var.project_name
  vpc_id              = module.vpc.vpc_id
  internet_gateway_id = module.vpc.internet_gateway_id
  public_subnet_cidr  = "10.0.1.0/24"
  availability_zone   = "us-east-1a"
  tags                = var.tags
}

module "security_group" {
  source           = "../../modules/security_group"
  project_name     = var.project_name
  vpc_id           = module.vpc.vpc_id
  ssh_allowed_cidr = var.ssh_allowed_cidr
  app_port         = var.app_port
  tags             = var.tags
}

module "ec2" {
  source            = "../../modules/ec2"
  project_name      = var.project_name
  ami_id            = var.ami_id
  instance_type     = "t3.micro"
  subnet_id         = module.subnet.public_subnet_id
  security_group_id = module.security_group.id
  key_name          = var.key_name
  docker_image      = var.docker_image
  app_port          = var.app_port
  tags              = var.tags
}