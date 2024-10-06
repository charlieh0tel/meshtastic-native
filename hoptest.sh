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
    meshtastic "$@" --sendtext "hoptest (hopLimit=$h)" --ack
done

set_hoplimit ${old_hoplimit} "$@"
sleep 15
meshtastic "$@" --sendtext "hopLimit restored to ${old_hoplimit}" --ack

