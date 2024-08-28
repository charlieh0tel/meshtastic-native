#!/bin/bash

set -o errexit
set -o xtrace

raspi-config nonint set_config_var dtparam=spi on
