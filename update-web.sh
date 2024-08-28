#!/bin/bash

set -o errexit
set -o nounset
set -o xtrace

cd node

rm -fr web.new || :;
mkdir web.new
(cd web.new && wget -O - https://github.com/meshtastic-native/web/releases/download/latest/build.tar | tar xvf -)

(cd web.new && for x in *.gz; do gunzip "${x}"; done)

rm -fr web.old || :;
mv web web.old || :;
mv web.new web
