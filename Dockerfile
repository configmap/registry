FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN git clone https://github.com/golang/tools.git tools
