#!/bin/sh
set -e

echo "Installing Solarized Light Theme and Settings"

open "$(dirname $0)/data/Solarized Light.terminal"
sleep 1

echo "Configuring Solarized Light as Default"
osascript <<EOF
tell application "Terminal"
  set default settings to settings set "Solarized Light"
end tell
EOF
