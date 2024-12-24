#!/bin/bash

. ~/src/meshtastic-native/bin/activate

ignore_hex() {
    local hex="$1"
    local dec=$((${hex}))
    meshtastic -t --set lora.ignore_incoming ${dec}
}

ignore_dec() {
    local dec=$1
    meshtastic -t --set lora.ignore_incoming ${dec}
}


# reset
meshtastic -t --set lora.ignore_incoming 0

# ignore_dec ...
# ignore_hex ...
