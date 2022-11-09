# CoolAdminCodespace Local Development Environment

基于 vscode devcontainer 的本地开发环境

当前组件：

```
nodejs: 18.12.1
npm: 8.19.2
yarn: 1.22.19
nvm: 0.39.2
go: go1.19.3 linux/amd64
docker: 20.10.21
```

## 下载项目

```bash
git clone --depth=1 --branch=local https://github.com/cool-team-official/cool-admin-codespace
```

或者下载 [zip](https://github.com/cool-team-official/cool-admin-codespace/archive/refs/heads/local.zip) 文件.

```bash
wget -O cool-admin-codespace.zip https://github.com/cool-team-official/cool-admin-codespace/archive/refs/heads/local.zip
```

解压

```bash
unzip cool-admin-codespace.zip
```

## 使用

1. 安装 [Docker](https://www.docker.com/products/docker-desktop)
2. 安装 [VSCode](https://code.visualstudio.com/)
3. 安装 [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) 插件
4. 打开项目, 点击左下角的绿色按钮, 选择 `Reopen in Container` 即可

## 手动拉取镜像

如果镜像摘取失败或拉取速度过慢, 可以手动拉取镜像.

```bash
# Docker Hub
docker pull gcslaoli/cool-admin-codespace
```

```bash
# Aliyun
docker pull registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace
```

## Gitee 镜像

[![李栋/cool-admin-codespace](https://gitee.com/gcslaoli/cool-admin-codespace/widgets/widget_card.svg?colors=4183c4,ffffff,ffffff,e3e9ed,666666,9b9b9b)](https://gitee.com/gcslaoli/cool-admin-codespace)
