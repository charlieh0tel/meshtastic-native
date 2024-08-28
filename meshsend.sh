#!/bin/bash

. ~/src/meshtastic-native/bin/activate

meshtastic -t --sendtext "$@" --ack
