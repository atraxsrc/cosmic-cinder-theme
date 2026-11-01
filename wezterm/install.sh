#!/usr/bin/env bash
# Installs the Cinder WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/cinder.lua" ] && cp "$dest/cinder.lua" "$dest/cinder.lua.bak"
cp "$dir/cinder.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("cinder")'
