FROM alpine:3.5

ENV IF_NAME eth0

ADD entrypoint.sh /entrypoint.sh

RUN apk --no-cache add dhcpcd && \
    chmod +x /entrypoint.sh && \
    echo "nohook resolv.conf" >> /etc/dhcpcd.conf

ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]
