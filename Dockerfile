FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN wget https://get.helm.sh/helm-v3.4.0-linux-amd64.tar.gz
