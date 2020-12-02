FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN wget https://github.com/prometheus-community/windows_exporter/releases/download/v0.13.0/windows_exporter-0.13.0-amd64.exe
