FROM alpine:3.9.4
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

MAINTAINER Nick Ustinov <nickustinov@gmail.com>

COPY lokalise /usr/local/bin/
