#!/bin/bash

set -o errexit
set -o nounset
#set -o xtrace

. ~/src/meshtastic/bin/activate

make_str() {
    local length=$1
    local s=""
    for x in $(seq ${length}); do
	s="${s}x"
    done
    echo "${s}"
}

first=1
last=241
inc=40

for n in $(seq $first $inc $last); do
    echo "test ${n}"
    meshtastic -t --sendtext "newtest ${n} $(make_str ${n})" --ack || :;
    sleep 10m
done
