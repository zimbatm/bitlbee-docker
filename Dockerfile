FROM debian
MAINTAINER zimbatm <zimbatm@zimbatm.com>

# Bitlbee port
EXPOSE 6667

# Make & install
ADD build.sh /root/build.sh
RUN sh /root/build.sh

# Bitlbee storage
VOLUME ["/var/lib/bitlbee"]
RUN adduser --system --no-create-home --group bitlbee && chown bitlbee:bitlbee /var/lib/bitlbee

# Bitlbee config
ADD bitlbee.conf /etc/bitlbee/bitlbee.conf
ADD motd.txt /etc/bitlbee/motd.txt

#ENTRYPOINT ["/usr/sbin/bitlbee", "-n", "-c", "/etc/bitlbee/bitlbee.conf"]
