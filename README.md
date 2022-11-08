# CoolAdminCodespace

CoolAdmin 集成化开发环境

## 使用说明

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=530035709)

点击本仓库右上方 `Code` 按钮, 选择 `Codespace`.

选择 `Create codespace on main` 创建一个新的 codespace.

也可以在 vscode 中安装`GitHub Codespace`插件, 并在`GitHub Codespace`中创建一个新的 codespace.

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

## 集成命令

启动 mysql 数据库

```bash
make mysql-up
```

关闭 mysql 数据库

```bash
make mysql-down
```

启动 redis 数据库

```bash
make redis-up
```

关闭 redis 数据库

```bash
make redis-down
```
