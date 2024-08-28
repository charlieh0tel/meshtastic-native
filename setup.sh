#!/bin/bash

set -o errexit
set -o nounset
set -o xtrace

python3 -m venv .

. bin/activate

pip install meshtastic
pip install -U platformio

git clone https://github.com/meshtastic/firmware.git
cd firmware
git submodule update --init
