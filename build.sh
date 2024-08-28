#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

. ~/src/meshtastic-native/bin/activate

./bin/build-native.sh |& tee build.log

sudo setcap 'cap_net_bind_service=+ep' ./release/meshtasticd_linux_aarch64
