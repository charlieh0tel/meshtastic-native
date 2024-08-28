#!/bin/bash

. ~/src/meshtastic-native/bin/activate

meshtastic -t --set lora.ignore_incoming 0

meshtastic -t --set lora.ignore_incoming 1008898027    # 0x3C228FEB JB [JB Actual]
meshtastic -t --set lora.ignore_incoming 3673042426    # 0xDAEE2DFA EJSR [Eric J Solar Router K6ODS]
