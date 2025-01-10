#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

IGNORED=$(meshtastic -t --get lora.ignore_incoming | grep lora.ignore_incoming)

echo "${IGNORED}"

journalctl --since -24h --user --unit meshtasticd |grep 'is in our ignore list' | awk '{print $13;}' | sort | uniq -c
