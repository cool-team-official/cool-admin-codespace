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

3. 构建镜像

```bash
yarn build
```

4. 推送镜像

```bash
yarn push
```
