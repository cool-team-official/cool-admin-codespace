#!/bin/bash
# This script is used to initialize the environment for the project
# Usage: ./init.sh
# Author: LiDong
# Date: 2022-11-08

# 出错退出
set -e

# 如果 REMOTE_CONTAINERS 为 true，则为容器开发环境,进行相关配置
if [ "$REMOTE_CONTAINERS" = "true" ]; then
    # 容器开发环境，配置容器内部的环境变量
    echo "Configuring environment variables for container development environment"
    # 设置docker mirror
    echo "Setting docker mirror"
    mkdir -p /etc/docker
    cat >/etc/docker/daemon.json <<EOF
{
    "registry-mirrors": ["https://registry.docker-cn.com","https://docker.mirrors.ustc.edu.cn"]
}
EOF

    # 配置goproxy
    echo "Configuring goproxy"
    go env -w GO111MODULE=on
    go env -w GOPROXY=https://goproxy.cn,direct

    # 配置npm mirror
    echo "Configuring npm mirror"
    npm config set registry https://registry.npmmirror.com

    # 安装cool-tools
    echo "Installing cool-tools ..."
    go install github.com/cool-team-official/cool-admin-go/cool-tools@latest
    # 安装gf
    echo "Installing gf use mirror ..."
    wget -O gf  \
        https://gh.hjmcloud.cn/github.com/gogf/gf/releases/latest/download/gf_$(go env GOOS)_$(go env GOARCH) \
        && chmod +x gf \
        && ./gf install -y \
        && rm ./gf

fi

# 如果 CODESPACES 为 true，则为codespaces开发环境,进行相关配置
if [ "$CODESPACES" = "true" ]; then
    # codespaces开发环境，配置codespaces内部的环境变量
    echo "Configuring environment variables for codespaces development environment"
    # 安装cool-tools
    echo "Installing cool-tools ..."
    go install github.com/cool-team-official/cool-admin-go/cool-tools@latest
    # 安装gf
    echo "Installing gf ..."
    wget -O gf  \
        https://github.com/gogf/gf/releases/latest/download/gf_$(go env GOOS)_$(go env GOARCH) \
        && chmod +x gf \
        && ./gf install -y \
        && rm ./gf
fi