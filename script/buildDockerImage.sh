#!/usr/bin/env bash
set -eo pipefail

#上传镜像
modules=( eureka-server )
 
for module in "${modules[@]}"; do
    docker build -t "microservice/${module}:latest" ${module}
done