FROM opensuse/tumbleweed

LABEL maintainer="yourname@example.com"
ENV container docker
ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# 安装 Cobbler 服务及依赖
RUN zypper --non-interactive install --no-recommends -y \
    cobbler  dhcp-server tftp apache2 \
    python3 python3-pip python3-netaddr python3-requests \
    syslinux grub2 grub2-x86_64-efi grub2-i386-efi \
    rsync supervisor net-tools-deprecated  &&  \
    zypper clean -a

# 复制配置文件模板（你可以在本地提前准备好）
COPY cobbler_settings.yaml /etc/cobbler/settings
COPY supervisord.conf /etc/supervisord.conf

# 创建必要目录
RUN mkdir -p /var/lib/cobbler /var/lib/tftpboot /run/httpd /run/cobbler /run/supervisord

# 启用 Apache 模块
RUN a2enmod proxy proxy_http wsgi

# 暴露 Cobbler 服务端口
EXPOSE 80 443 25151 69/udp

# 入口：启动全部服务
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
