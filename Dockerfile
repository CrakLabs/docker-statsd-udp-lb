FROM node:0.12

MAINTAINER Julien Maitrehenry "julien.maitrehenry@me.com"

RUN npm install -g pm2@0.12.10 && npm install udp-balancer && touch /balancer.js

COPY consul-template /bin/consul-template
COPY balancer.ctmpl /tmp/balancer.ctmpl
COPY start.sh start.sh

EXPOSE 8125/udp

CMD ./start.sh
