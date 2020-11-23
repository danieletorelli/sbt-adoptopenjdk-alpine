#!/bin/bash

set -euo pipefail

SOURCE_DIR="/tmp/sbt"
TARGET_DIR="/usr/share/sbt"
CONFIG_DIR="/etc/sbt"
BUILD_DIR="/var/workspace"
SBT_VERSION="$1"

echo "Installing SBT v${SBT_VERSION}"
curl -L -o /tmp/sbt-$SBT_VERSION.tgz https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz
tar -C /tmp -xvzf /tmp/sbt-${SBT_VERSION}.tgz
rm -f ${SOURCE_DIR}/bin/sbt.bat
rm -f ${SOURCE_DIR}/conf/sbtconfig.txt
install -dm755 ${TARGET_DIR}/bin
install -m755 -t ${TARGET_DIR}/bin ${SOURCE_DIR}/bin/*
install -dm755 ${CONFIG_DIR}
install -m644 -t ${CONFIG_DIR} ${SOURCE_DIR}/conf/*
ln -s ${TARGET_DIR}/bin/sbt /usr/bin/sbt
rm -f /tmp/sbt-$SBT_VERSION.tgz
rm -rf ${SOURCE_DIR}
install -dm755 ${BUILD_DIR}
