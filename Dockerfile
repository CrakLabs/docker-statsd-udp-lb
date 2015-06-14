FROM node:0.12

MAINTAINER Julien Maitrehenry "julien.maitrehenry@me.com"

RUN apt-get update \
	&& apt-get install -y wget ca-certificates \
	&& wget -qO - https://github.com/hashicorp/consul-template/releases/download/v0.10.0/consul-template_0.10.0_linux_amd64.tar.gz | tar xzf - \
	&& mv consul-template_0.10.0_linux_amd64/consul-template /bin/consul-template \
	&& apt-get remove -y wget ca-certificates \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf consul-template_0.10.0_linux_amd64 \
	&& npm install -g pm2@0.12.10 \
	&& npm install udp-balancer \
	&& touch /balancer.js

COPY balancer.ctmpl /tmp/balancer.ctmpl
COPY start.sh start.sh

EXPOSE 8125/udp

CMD ./start.sh
