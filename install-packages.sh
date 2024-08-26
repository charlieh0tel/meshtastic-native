#!/bin/bash

set -o errexit
set -o nounset
set -o xtrace

PACKAGES=(
#    libblkid-dev
    libbluetooth-dev
    libcurl4-gnutls-dev
#    libdeflate-dev
#    libffi-dev
#    libgcrypt20-dev
#    libgdk-pixbuf-2.0-dev
#    libglib2.0-dev
#    libglib2.0-dev-bin
#    libgnutls28-dev
#    libgpg-error-dev
    libgpiod-dev
#    libgpod-dev
#    libidn2-dev
#    libimobiledevice-dev
#    libjansson-dev
#    libjbig-dev
#    libjpeg62-turbo-dev
#    libjpeg-dev
#    liblerc-dev
#    liblzma-dev
#    libmicrohttpd-dev
#    libmount-dev
    liborcania-dev
#    libp11-kit-dev
#    libpcre2-dev
#    libplist-dev
#    libpng-dev
#    libselinux1-dev
#    libsepol-dev
    libssl-dev
#    libsystemd-dev
#    libtasn1-6-dev
#    libtiff-dev
    libulfius-dev
#    libusbmuxd-dev
#    libwebp-dev
    libyaml-cpp-dev
#    libyder-dev
#    libzstd-dev
    nettle-dev
#    uuid-dev
#    zlib1g-dev
)


apt install --no-install-recommends --no-install-suggests \
    "${PACKAGES[@]}"
