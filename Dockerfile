FROM alpine:3.9.4

MAINTAINER Nick Ustinov <nickustinov@gmail.com>

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY lokalise /usr/local/bin/