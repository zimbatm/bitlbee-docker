BitlBee docker image
====================

[BitlBee](http://www.bitlbee.org/) is a IRC bouncer and bridge for various
chat networks. This project packages it inside a [docker](http://docker.io)
container to simplify it's distribution and usage.

Usage
-----

`docker run -p 6667:6667 zimbatm/bitlbee`

TODO: what's the default user ?

Build
-----

clone this repo and go to it's root directory.

`docker build .`
