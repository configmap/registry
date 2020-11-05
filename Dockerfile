FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN wget https://github.com/thanos-io/thanos/releases/download/v0.16.0/thanos-0.16.0.linux-amd64.tar.gz
