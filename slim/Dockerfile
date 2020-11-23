FROM adoptopenjdk/openjdk8:alpine-slim

COPY install-sbt.sh /tmp

WORKDIR /var/workspace

ARG SBT_VERSION=latest

RUN \
  apk add --no-cache --virtual .deps curl jq && \
  apk add --no-cache bash && \
  /tmp/install-sbt.sh ${SBT_VERSION} && \
  rm -f /tmp/install-sbt.sh && \
  apk del --purge .deps && \
  rm -rf /var/cache/apk/* && \
  sbt sbtVersion

CMD sbt
