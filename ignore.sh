#!/bin/bash

. ~/src/meshtastic-native/bin/activate

ignore() {
    local hex="$1"
    local dec=$((${hex}))
    meshtastic -t --set lora.ignore_incoming ${dec}
}


# reset
meshtastic -t --set lora.ignore_incoming 0

# ignore 0x3C228FEB # JB [JB Actual]
# ignore 0xDAEE2DFA # EJSR [Eric J Solar Router K6ODS]
ignore 0x73f1b00b # b00b [BLUFFS b00b]
