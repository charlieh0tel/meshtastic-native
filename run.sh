#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd ~/src/meshtastic/node

exec ~/src/meshtastic/firmware/release/meshtasticd_linux_aarch64 \
    -d "$(pwd)/filesystem" \
    -c config.yaml
