# Statsd-lb Dockerfile

This repository contains Dockerfile of a small UDP load balancer with consul-template.

## Base Docker Image

[node:0.12](https://registry.hub.docker.com/_/node/)

## Installation

1. Install [Docker](https://www.docker.com/)
2. Have a consul server running and a statsd service running
3. Download image from public [Crakmedia Docker Hub Registry](https://registry.hub.docker.com/repos/crakmedia/) `docker pull crakmedia/statsd-lb`

## Usage

docker run -d -p 8125:8125/udp -e CONSUL_SERVER=X.X.X.X:8500 -e CONSUL_SERVICE_NAME=statsd-8125 crakmedia/statsd-lb

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## TODO

- Download consul-template and install it when we build image

## Credits

- Julien Maitrehenry

## License

TODO: Write license