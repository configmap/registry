FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN curl -L -o db https://cdn.mysql.com/archives/mysql-5.7/mysql-5.7.22-el7-x86_64.tar
