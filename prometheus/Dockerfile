FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt upgrade -y && \
    apt install -y prometheus && \
    rm -rf /etc/prometheus

EXPOSE 9090

CMD prometheus
