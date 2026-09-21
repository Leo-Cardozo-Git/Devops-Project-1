resource "aws_instance" "main" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  user_data = templatefile("${path.module}/user_data.sh", {
    docker_image = var.docker_image
    app_port     = var.app_port
  })

  tags = merge(var.tags, { Name = "${var.project_name}-app" })
}