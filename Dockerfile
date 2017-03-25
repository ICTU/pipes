FROM centos:7

ENV IF_NAME eth0

ADD entrypoint.sh /entrypoint.sh

RUN yum install -y dhclient && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]
