FROM registry.cn-beijing.aliyuncs.com/demo-yu/demo:11.3.0-cudnn8-runtime-ubuntu20.04_3
#RUN ./webui.sh -f can_run_as_root --exit --skip-torch-cuda-test
#ENV VIRTUAL_ENV=/stable-diffusion-webui/venv
#ENV PATH="$VIRTUAL_ENV/bin:$PATH"

#CMD ["python3", "launch.py", "--listen --skip-torch-cuda-test --no-half"]

RUN wget https://cdn-lfs-us-1.hf-mirror.com/repos/f3/c8/f3c8ca66be2bd64c06f26b308de2e2f3bfff2bf40b0c143e9f25f4c929ecfe57/b0c741ab4e2960b574e4735a1e847a159e3371213d5be2b189d1d2ffd6388298?response-content-disposition=attachment%3B+filename*%3DUTF-8%27%27DeepSeek-R1-Q4_K_M-00005-of-00009.gguf%3B+filename%3D%22DeepSeek-R1-Q4_K_M-00005-of-00009.gguf%22%3B&Expires=1739777593&Policy=eyJTdGF0ZW1lbnQiOlt7IkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTczOTc3NzU5M319LCJSZXNvdXJjZSI6Imh0dHBzOi8vY2RuLWxmcy11cy0xLmhmLmNvL3JlcG9zL2YzL2M4L2YzYzhjYTY2YmUyYmQ2NGMwNmYyNmIzMDhkZTJlMmYzYmZmZjJiZjQwYjBjMTQzZTlmMjVmNGM5MjllY2ZlNTcvYjBjNzQxYWI0ZTI5NjBiNTc0ZTQ3MzVhMWU4NDdhMTU5ZTMzNzEyMTNkNWJlMmIxODlkMWQyZmZkNjM4ODI5OD9yZXNwb25zZS1jb250ZW50LWRpc3Bvc2l0aW9uPSoifV19&Signature=W0ibJFo06bh34%7EzYxzO3OdPQsLJbMD3wB24LnRFp8uNiU5Ln5acL7JPrAYQXqXSf91S7wz0X4TSNaKhNlS-3yMHzPlw-ZIUlXB6%7EaOLj%7E070Xxj%7EXAbYJSqZ6TkKKpLES-08KcJyY9P-JLjgpcgA60eFrUIVBVfCBbeLix6VZHJASky0k0JqJl-sTXKxwcf5pLUFgCC4xhstHj9dvi0gN%7EFPf5NBtYx45dAFbGULPdYGA-%7E%7E5HviJbroW%7EL-2DPAJYfT5En1DIvpNZ3cut6K76SbSXLV9PUM69%7ERyBCMEsqYRDzroyO6UJxx5QFtOLlhA-PKW8iCwa0z%7ELy5sJgvgw__&Key-Pair-Id=K24J24Z295AEI9

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
    
