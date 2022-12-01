# CoolAdminCodespace Local Development Environment

基于 vscode devcontainer 的本地开发环境

当前操作系统: Debian GNU/Linux 11 (bullseye)

当前组件：

```
nodejs: 18.12.1
npm: 8.19.2
yarn: 1.22.19
nvm: 0.39.2
go: go1.19.3
docker: 20.10.21
Python:3.9.2
```

## 下载项目

```bash
git clone --depth=1 --branch=local https://github.com/cool-team-official/cool-admin-codespace
```

或者下载 [zip](https://github.com/cool-team-official/cool-admin-codespace/archive/refs/heads/local.zip) 文件.

```bash
wget -O cool-admin-codespace.zip \
https://github.com/cool-team-official/cool-admin-codespace/archive/refs/heads/local.zip
```

TIPS:
如果下载速度过慢，可以使用 [pgit](https://www.lidong.xin/works/pgit.html) 工具下载。

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

## 集成命令

```bash
root ➜ /workspaces/cool-admin-codespace (local ✗) $ make
clean                          清理项目,用于删除开发容器及存储卷,需在本地开发环境执行
help                           查看帮助
init                           初始化项目,用于在开发容器生成后配置一些常用镜像,如: golang, nodejs, docker
mysql-backup                   备份mysql
mysql-down                     停止mysql
mysql-up                       启动mysql
redis-down                     停止redis
redis-up                       启动redis
setmirror                      设置国内镜像源,用于在开发容器生成后配置国内镜像源
```
