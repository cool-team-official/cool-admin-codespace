# docker-builder

本分支用于构建 Docker 镜像，运行于 `codespaces`环境。

## 开发资料

- [Developing inside a Container](https://code.visualstudio.com/docs/remote/containers) - Visual Studio Code 官方文档 - 容器开发
- [Dev Container CLI](https://code.visualstudio.com/docs/remote/devcontainer-cli) - Visual Studio Code 官方文档 - 容器开发命令行工具

## 发布流程

1. 登陆 Docker Hub

```bash
docker login --username=cnlidong
```

2. 登陆 aliyun registry

```bash
docker login --username=cnlidong@live.cn registry.cn-beijing.aliyuncs.com
```

3. 安装依赖

```bash
npm install -g @devcontainers/cli
```
4. 安装binfmt-misc

```bash
docker run --privileged --rm tonistiigi/binfmt --install all
```
5. 创建builder

```bash
docker buildx create --name mybuilder --driver docker-container --bootstrap --use
```

6. 构建测试镜像

```bash
image-build/build-image.sh gcslaoli/cool-admin-codespace:dev true "linux/amd64,linux/arm64"
```

```bash
image-build/build-image.sh registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace:dev true "linux/amd64,linux/arm64"
```
7. 构建正式镜像

```bash
image-build/build-image.sh cnlidong/cool-admin-codespace:latest true "linux/amd64,linux/arm64"
```

```bash
image-build/build-image.sh registry.cn-beijing.aliyuncs.com/gcslaoli/cool-admin-codespace:latest true "linux/amd64,linux/arm64"
```