#!/bin/bash

. ~/src/meshtastic/bin/activate

meshtastic -t --sendtext "$@" --ack
