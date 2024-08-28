#!/bin/bash

set -o errexit
set -o xtrace

raspi-config nonint do_spi 0
