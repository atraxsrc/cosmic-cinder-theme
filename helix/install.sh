#!/usr/bin/env bash
# Installs the Cinder Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/cinder.toml" ] && cp "$dest/cinder.toml" "$dest/cinder.toml.bak"
cp "$dir/cinder.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "cinder"'
