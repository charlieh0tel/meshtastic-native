#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd ~/src/meshtastic-native/node

exec ~/src/meshtastic-native/firmware/release/meshtasticd_linux_aarch64 \
    -d "$(pwd)/filesystem" \
    -c config.yaml
