#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DIR="/home/ch/src/meshtastic-native"

cd "${DIR}/node"
mkdir -p filesystem

exec "${DIR}/firmware/release/meshtasticd_linux_aarch64" \
    -d "${DIR}/node/filesystem" \
    -c config.yaml
