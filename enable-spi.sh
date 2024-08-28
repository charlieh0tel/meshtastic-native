#!/bin/bash

set -o errexit
set -o xtrace

raspi-config nonint do_spi 0

sed -i '/^dtparam=spi=on/a dtoverlay=spi0-0cs' /boot/firmware/config.txt
