FROM ubuntu

ADD entrypoint.sh /opt/entrypoint.sh

RUN ls

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y wget && \
    apt-get install -y sudo && \
    apt-get install -y xz-utils && \
    apt-get install -y libxml2-dev && \
    wget -O install.sh https://notdocker.xp.cn/install.sh && \
    sudo bash install.sh && \
    wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && \
    dpkg -i cloudflared-linux-amd64.deb && \
    chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
