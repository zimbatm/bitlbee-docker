FROM ubuntu
MAINTAINER zimbatm <zimbatm@zimbatm.com>

# Bitlbee port
EXPOSE 6667

# Bitlbee storage
VOLUME ["/var/lib/bitlbee"]

RUN apt-get update -qy
RUN apt-get install -qy bitlbee
RUN chown bitlbee:bitlbee /var/lib/bitlbee

CMD ["-D", "-n"]
ENTRYPOINT ["/usr/sbin/bitlbee"]
