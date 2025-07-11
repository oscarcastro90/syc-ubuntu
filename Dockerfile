FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    iputils-ping \
    telnet \
    curl \
    wget \
    net-tools \
    iproute2 \
    dnsutils \
    tcpdump \
    traceroute \
    vim \
    less \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["bash", "-c", "while true; do sleep 3600; done"]

