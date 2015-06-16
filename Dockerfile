FROM node:0.12-slim

MAINTAINER Julien Maitrehenry "julien.maitrehenry@me.com"

RUN apt-get update \
    && apt-get install -y wget ca-certificates git \
    && wget -qO - https://github.com/hashicorp/consul-template/releases/download/v0.10.0/consul-template_0.10.0_linux_amd64.tar.gz | tar xzf - \
    && mv consul-template_0.10.0_linux_amd64/consul-template /bin/consul-template \
    && npm install -g pm2@0.12.10 \
    && npm install udp-balancer \
    && apt-get remove -y wget ca-certificates git \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf consul-template_0.10.0_linux_amd64 \
    && touch /balancer.js

COPY balancer.ctmpl /tmp/balancer.ctmpl
COPY start.sh start.sh

EXPOSE 8125/udp

CMD ./start.sh
