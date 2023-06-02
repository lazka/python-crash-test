#!/bin/bash

set -e

curl -L "https://github.com/lazka/python-crash-test/releases/download/temp/mingw-w64-ucrt-x86_64-python-3.9.13-2-any.pkg.tar.zst" -o "mingw-w64-ucrt-x86_64-python-3.9.13-2-any.pkg.tar.zst"
pacman --noconfirm -U "mingw-w64-ucrt-x86_64-python-3.9.13-2-any.pkg.tar.zst"

git clone --depth=1 https://github.com/mesonbuild/meson.git meson || true
cd project
rm -Rf _build
python ../meson/meson.py setup _build
cd _build
ninja
