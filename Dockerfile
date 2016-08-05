FROM alpine:3.3

ENV DEBUG=false
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]
