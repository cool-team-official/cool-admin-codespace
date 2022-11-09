#!/bin/bash
# Push image to Docker Hub and Aliyun Registry

# 出错时停止
set -e

# 根据当前日期时间生成镜像版本号
version=$(date +%Y%m%d%H%M)

# 如果传入了参数，则使用参数作为版本号
if [ $# -eq 1 ]; then
    version=$1
fi
echo "version: $version"

# 给 cool-admin-codespace:dev 打上版本号
docker tag cool-admin-codespace:dev gcslaoli/cool-admin-codespace:$version
docker tag cool-admin-codespace:dev registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace:$version

# 给 cool-admin-codespace:dev 打上 latest 标签
docker tag cool-admin-codespace:dev gcslaoli/cool-admin-codespace:latest
docker tag cool-admin-codespace:dev registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace:latest

# 推送到 Docker Hub
docker push gcslaoli/cool-admin-codespace:$version
docker push gcslaoli/cool-admin-codespace:latest

# 推送到阿里云镜像仓库
docker push registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace:$version
docker push registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace:latest