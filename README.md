# docker-builder

本分支用于构建 Docker 镜像，运行于 `codespaces`环境。

当前基础镜像:

https://github.com/devcontainers/images/blob/main/src/base-debian/history/0.203.7.md

## 开发资料

- [Developing inside a Container](https://code.visualstudio.com/docs/remote/containers) - Visual Studio Code 官方文档 - 容器开发
- [Dev Container CLI](https://code.visualstudio.com/docs/remote/devcontainer-cli) - Visual Studio Code 官方文档 - 容器开发命令行工具
- [features-sshd](https://github.com/devcontainers/features/tree/main/src/sshd) - Dev Container Features - SSHD - SSH 服务  - 用于远程连接

## 发布流程

1. 登陆 Docker Hub

```bash
docker login --username=cnlidong
```

2. 安装依赖

```bash
npm install -g @devcontainers/cli
```
3. 安装binfmt-misc

```bash
make init
```

4. 构建测试镜像

```bash
make build.dev
```

5. 构建正式镜像

```bash
make build.latest
```
