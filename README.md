BitlBee docker image
====================

[BitlBee](http://www.bitlbee.org/) is a IRC bouncer and bridge for various
chat networks. This project packages it inside a [docker](http://docker.io)
container to simplify it's distribution and usage.

Usage
-----

`docker run -p 6667:6667 zimbatm/bitlbee`

Build
-----

clone this repo and go to it's root directory.

`docker build .`

TODO
----

* SSL. this is necessary.
* discover and document onboarding process.
* do we need to change the /etc/bitlbee config ?
* do we want the package to be built from source ?

See also
--------

https://github.com/sprsquish/dockerfiles/tree/master/bitlbee is probably
better

