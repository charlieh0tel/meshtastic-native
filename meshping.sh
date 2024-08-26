#!/bin/bash

set -o errexit
set -o nounset

. ~/src/meshtastic/bin/activate

WORD3="$(wonderwords -l 3 -p noun -d -)"

meshtastic -t "$@" --sendtext "w6otx code ${WORD3} @ $(date --utc)" --ack
