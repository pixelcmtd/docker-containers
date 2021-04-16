FROM ubuntu:18.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y tor polipo netcat

COPY torrc /etc/tor/torrc
COPY polipo /etc/polipo/config

COPY run.sh /root/run.sh
RUN chmod +x /root/run.sh

EXPOSE 9050 9052 9053

CMD /root/run.sh
