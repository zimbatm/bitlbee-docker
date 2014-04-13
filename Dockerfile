FROM debian
MAINTAINER zimbatm <zimbatm@zimbatm.com>

# Make & install
ADD build.sh /root/build.sh
RUN sh /root/build.sh

# Bitlbee config
VOLUME ["/data"]
USER daemon
EXPOSE 6667

ADD bitlbee.conf /etc/bitlbee/bitlbee.conf
ADD motd.txt /etc/bitlbee/motd.txt

ENTRYPOINT ["/usr/sbin/bitlbee", "-n", "-c", "/etc/bitlbee/bitlbee.conf"]
