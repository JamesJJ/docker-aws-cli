FROM alpine:latest

MAINTAINER James J J Hooper <JamesJJ@users.noreply.github.com>

RUN \
  apk update --no-progress && apk upgrade -v && \
  apk -Uuv add groff less python py-pip && \
  pip install awscli && \
  apk --purge -v del py-pip && \
  rm /var/cache/apk/*

ENTRYPOINT [ 'aws' ]

