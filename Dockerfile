FROM alpine:3.4

MAINTAINER krast <krast@live.cn>

RUN apk update \
    && apk add --no-cache squid

COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod 700 /entrypoint.sh

EXPOSE 3128/tcp
ENTRYPOINT ["/entrypoint.sh"]
