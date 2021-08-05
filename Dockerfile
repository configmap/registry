FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN curl -L -o db https://archive.mariadb.org//mariadb-5.5.68/bintar-linux-glibc_214-x86_64/mariadb-5.5.68-linux-glibc_214-x86_64.tar.gz
