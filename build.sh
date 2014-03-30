#!/bin/sh
set -e
cd `dirname $0`

VERSION=3.2.1

apt-get update -qy
apt-get install -qy curl build-essential libglib2.0-dev libgnutls-dev libotr2-dev

rm -rf bitlbee-${VERSION}
curl http://get.bitlbee.org/src/bitlbee-${VERSION}.tar.gz | tar xzvf -
cd bitlbee-${VERSION}

./configure --otr=1 --prefix=/usr
make
make install
make install-etc
