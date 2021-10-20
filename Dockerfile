FROM alpine:3.13.6
#FROM grafana/grafana:7.3.2
#FROM quay.io/gravitational/netbox:latest
#WORKDIR /root
#RUN curl -L -o db https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.22-linux-glibc2.12-x86_64.tar
#RUN grafana-cli plugins install redis-datasource
RUN apk add tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone 

