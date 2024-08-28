#!/bin/bash

set -o errexit

git clone https://github.com/meshtastic/firmware.git
cd firmware
git submodule update --init
