#!/bin/sh
set -e

echo "Extracting Input Font to User Fonts"
unzip "$(dirname $0)/data/Input-Font.zip" "*.ttf" -d "$HOME/Library/Fonts"
