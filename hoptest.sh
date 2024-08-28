#!/bin/bash

. ~/src/meshtastic-native/bin/activate

get_hoplimit() {
    meshtastic "$@" --get lora.hopLimit 2>/dev/null | sed -n -e 's/.*\([0-9]\)/\1/p'
}

set_hoplimit() {
    local h=$1; shift
    meshtastic "$@" --set lora.hopLimit $h --reboot
}

old_hoplimit=$(get_hoplimit "$@")

echo $old_hoplimit

for h in $(seq 3 7); do
    set_hoplimit $h "$@"
    sleep 15
    hoplimit=$(get_hoplimit "$@")
    if (( h != hoplimit )); then
	echo "rats ${h} ${hoplimit}"
	break
    fi
    echo $hoplimit;
    meshtastic "$@" --sendtext "m1 (hopLimit=$h)" --ack
done

meshtastic "$@" --set lora.hopLimit ${old_hoplimit}

