FROM quay.io/gravitational/netbox:latest
WORKDIR /root
RUN wget http://www.ldapclient.com/downloads610/LdapBrowser-6.10.x-win-x86-Setup.msi
