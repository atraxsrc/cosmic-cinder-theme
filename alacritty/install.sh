#!/usr/bin/env bash
# Installs the Cinder Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/cinder.toml" ] && cp "$dest/cinder.toml" "$dest/cinder.toml.bak"
cp "$dir/cinder.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/cinder.toml"]'
