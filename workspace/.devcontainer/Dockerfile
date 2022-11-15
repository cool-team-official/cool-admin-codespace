# https://github.com/devcontainers/images/blob/main/src/base-debian/history/0.202.9.md
FROM mcr.microsoft.com/devcontainers/base:0.202.9-debian-11
RUN apt update && apt install -y \
    python3 \
    sqlite3 \
    iputils-ping \
    traceroute \
    telnet 
# COPY daemon.json /etc/docker/daemon.json
