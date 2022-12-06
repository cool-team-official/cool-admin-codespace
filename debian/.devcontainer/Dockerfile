FROM mcr.microsoft.com/devcontainers/base:0.203.1-bullseye
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list \
    && apt update && apt install -y \
    python3 \
    sqlite3 \
    python3-pip \
    vagrant\
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    # iputils-ping \
    # traceroute \
    # telnet 
# COPY daemon.json /etc/docker/daemon.json
