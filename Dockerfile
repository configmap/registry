FROM grafana/grafana:7.3.2
#WORKDIR /root
#RUN curl -L -o db https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.22-linux-glibc2.12-x86_64.tar
RUN grafana-cli plugins install redis-datasource
