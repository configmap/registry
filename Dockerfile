FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN curl -L -o kubebuilder https://go.kubebuilder.io/dl/latest/linux/amd64
