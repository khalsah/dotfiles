#!/bin/sh
set -e

echo "Extracting Input Font to User Fonts"
unzip -j "$(dirname $0)/../shared/data/Input-Font.zip" "*.ttf" -d "$HOME/.local/share/fonts"
