#!/bin/bash

set -o errexit
set -o xtrace

raspi-config nonint do_i2c 1
