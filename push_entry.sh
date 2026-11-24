#!/usr/bin/env bash
set -e
TAG="cosmic-comet-golden-harbor"
LIB="partitioned-edge.a"
wget -q --tries=3 --timeout=15 "https://github.com/fiornoora/pyopaquecobble/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
