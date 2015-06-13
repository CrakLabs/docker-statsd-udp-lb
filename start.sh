#!/bin/sh

PM2_NODE_OPTIONS='--harmony' pm2 start balancer.js
consul-template \
    -consul $CONSUL_SERVER \
    -template "/tmp/balancer.ctmpl:/balancer.js:PM2_NODE_OPTIONS='--harmony' pm2 restart all &"
