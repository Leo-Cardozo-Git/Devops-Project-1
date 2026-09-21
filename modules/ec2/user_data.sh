#!/bin/bash
set -euxo pipefail

yum update -y
yum install -y docker
systemctl enable docker
systemctl start docker

docker pull ${docker_image}
docker run -d --restart unless-stopped \
  -p ${app_port}:${app_port} \
  --name app ${docker_image}