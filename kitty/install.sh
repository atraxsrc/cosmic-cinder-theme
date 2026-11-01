#!/usr/bin/env bash
# Installs the Cinder kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/Cinder.conf" ] && cp "$dest/Cinder.conf" "$dest/Cinder.conf.bak"
cp "$dir/Cinder.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/Cinder.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
