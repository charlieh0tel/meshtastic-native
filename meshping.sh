#!/bin/bash

set -o errexit
set -o nounset

. ~/src/meshtastic-native/bin/activate

WORD3="$(wonderwords -l 3 -p noun -d -)"

meshsend.sh "w6otx code ${WORD3} @ $(date --utc)"
