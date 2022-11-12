# https://github.com/microsoft/vscode-dev-containers/blob/main/containers/debian/history/0.202.8.md
FROM mcr.microsoft.com/vscode/devcontainers/base:0.202.8-bullseye
RUN apt update && apt install -y \
    python3 
COPY daemon.json /etc/docker/daemon.json
