FROM registry.cn-beijing.aliyuncs.com/demo-yu/demo:11.3.0-cudnn8-runtime-ubuntu20.04_1
RUN wget https://bootstrap.pypa.io/get-pip.py && python3.8 get-pip.py

#FROM alpine:3.13.6
#FROM grafana/grafana:7.3.2
#FROM quay.io/gravitational/netbox:latest
#WORKDIR /root
#RUN curl -L -o db https://download2.vmware.com/patch/software/VUM/OFFLINE/offlinerelease-vROps-8.3.0-HF2-20210309-134679/vRealize-Operations-Manager-Appliance-8.3.0.17665806_OVF10.ova?HashKey=022b22ebe921949a2b85b62c9b8e97e4&params=%7B%22custnumber%22%3A%22ZCVldypwdHR0ZA%3D%3D%22%2C%22sourcefilesize%22%3A%222483+MB%22%2C%22patchName%22%3A%22vRealize-Operations-Manager-Appliance-8.3.0.17665806_OVF10.ova%22%2C%22languagecode%22%3A%22en%22%2C%22source%22%3A%22PATCH%22%2C%22downloadtype%22%3A%22manual%22%2C%22downloaduuid%22%3A%22e80e69bb-3a73-4803-9503-3a0e9f50a2ea%22%2C%22productname%22%3A%22vRealize+Operations+Manager%22%2C%22productversion%22%3A%228.3.0%22%7D&AuthKey=1645063209_171edf35e1a6c5fc1bed602655f94078
#RUN grafana-cli plugins install redis-datasource
#RUN apk add tzdata sysstat  \
#    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
#    && echo "Asia/Shanghai" > /etc/timezone 

#FROM quay.io/gravitational/netbox:latest
#WORKDIR /root
#RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz

# FROM centos:centos7.9.2009
# RUN yum install -y yum-utils device-mapper-persistent-data lvm2 &&
#     yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo &&
#     sed -i 's+download.docker.com+mirrors.aliyun.com/docker-ce+' /etc/yum.repos.d/docker-ce.repo &&
#     yum makecache fast &&
#     yum -y install docker-ce &&
#     systemctl restart docker
    
