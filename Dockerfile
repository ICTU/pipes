FROM alpine:3.3

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]
