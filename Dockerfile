FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN wget https://github.com/chartmuseum/helm-push/releases/download/v0.9.0/helm-push_0.9.0_linux_amd64.tar.gz
