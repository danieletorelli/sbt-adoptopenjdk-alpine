ARG JDK_VERSION=8
ARG ALPINE_VERSION=alpine-slim

FROM adoptopenjdk/openjdk${JDK_VERSION}:${ALPINE_VERSION}

LABEL maintainer="Daniele Torelli"

ARG SBT_VERSION=latest

COPY install-sbt.sh /tmp

WORKDIR /var/workspace

RUN \
  apk add --no-cache --virtual .deps curl jq && \
  apk add --no-cache bash && \
  /tmp/install-sbt.sh ${SBT_VERSION} && \
  rm -f /tmp/install-sbt.sh && \
  apk del --purge .deps && \
  rm -rf /var/cache/apk/* && \
  sbt sbtVersion

CMD sbt
