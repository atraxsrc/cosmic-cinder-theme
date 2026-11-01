#!/usr/bin/env bash
# Installs the Cinder Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/Cinder" ] && cp "$dest/Cinder" "$dest/Cinder.bak"
cp "$dir/Cinder" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = Cinder"
echo "(or  theme = dark:Cinder,light:CinderDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
