#!/bin/bash

set -e

git clone --depth=1 https://github.com/mesonbuild/meson.git meson || true
cd project
rm -Rf _build
echo $1
$1 ../meson/meson.py setup _build
cd _build
ninja
