# Statsd-lb Dockerfile

This repository contains Dockerfile of a small UDP load balancer with consul-template.

## Base Docker Image

[node:0.12](https://registry.hub.docker.com/_/node/)

## Installation

1. Install [Docker](https://www.docker.com/)
2. Have a consul server running and a statsd service running
3. Download image from public [Crakmedia Docker Hub Registry](https://registry.hub.docker.com/repos/crakmedia/) 
	`docker pull crakmedia/statsd-lb`

## Usage

`docker run -d -p 8125:8125/udp -e CONSUL_SERVER=X.X.X.X:8500 -e CONSUL_SERVICE_NAME=statsd-8125 crakmedia/statsd-lb`

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

- Julien Maitrehenry

## License

The MIT License

Copyright (c) 2015 Crakmedia http://www.crakmedia.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
