FROM ubuntu:26.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends tor privoxy netcat-openbsd \
 && rm -rf /var/lib/apt/lists/*

COPY torrc /etc/tor/torrc
COPY privoxy /etc/privoxy/config

COPY run.sh /root/run.sh

EXPOSE 9050 9052 9053

CMD /root/run.sh
