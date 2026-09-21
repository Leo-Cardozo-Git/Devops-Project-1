output "app_url" {
  value = "http://${module.ec2.public_ip}:${var.app_port}"
}