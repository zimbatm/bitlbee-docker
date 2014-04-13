#!/bin/sh
set -e
cd `dirname $0`

VERSION=3.2.1

# Dependencies
apt-get update -qy
DEBIAN_FRONTEND=noninteractive apt-get install -qy curl build-essential libglib2.0-dev libgnutls-dev libotr2-dev

curl http://get.bitlbee.org/src/bitlbee-${VERSION}.tar.gz | tar xzvf - -C /usr/src

# Build & install
cd /usr/src/bitlbee-${VERSION}
./configure --otr=1 --prefix=/usr
make
make install
make install-etc
cd /

# Cleanup
# TODO: Remove build dpendencies
rm -rf /usr/src/bitlbee-${VERSION}
