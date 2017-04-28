FROM alpine:3.5

ENV IF_NAME eth0

ADD entrypoint.sh /entrypoint.sh
ADD hooks/05-bound /usr/lib/dhcpcd/dhcpcd-hooks/05-bound

RUN apk --no-cache add dhcpcd && \
    chmod +x /entrypoint.sh && \
    echo "nohook resolv.conf" >> /etc/dhcpcd.conf

ENTRYPOINT ["/entrypoint.sh"]
