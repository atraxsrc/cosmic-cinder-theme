-- Cinder for WezTerm, part of cosmic-cinder-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("cinder")
-- To follow COSMIC's Dark / Light toggle with the Cinder Day half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "cinder" or "cinderday")

return {
  foreground = "#B3ADAD",
  background = "#121212",

  cursor_bg = "#CC6528",
  cursor_fg = "#121212",
  cursor_border = "#CC6528",
  compose_cursor = "#E19E74",

  selection_bg = "#2A2A30",
  selection_fg = "none",

  scrollbar_thumb = "#383735",
  split = "#383735",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#0C0C0C", "#C75E57", "#A5A297", "#C6C4B0", "#CC6528", "#E19E74", "#8A8575", "#DBD9D3" },
  brights = { "#383735", "#D9776F", "#BDBAB0", "#D5D3C3", "#D97A3F", "#EDB896", "#90947A", "#EEECE6" },

  copy_mode_active_highlight_bg = { Color = "#CC6528" },
  copy_mode_active_highlight_fg = { Color = "#121212" },
  copy_mode_inactive_highlight_bg = { Color = "#C6C4B0" },
  copy_mode_inactive_highlight_fg = { Color = "#121212" },

  quick_select_label_bg = { Color = "#E19E74" },
  quick_select_label_fg = { Color = "#121212" },
  quick_select_match_bg = { Color = "#C6C4B0" },
  quick_select_match_fg = { Color = "#121212" },

  tab_bar = {
    background = "#121212",
    active_tab = { bg_color = "#CC6528", fg_color = "#121212", intensity = "Bold" },
    inactive_tab = { bg_color = "#1A1A1E", fg_color = "#90947A" },
    inactive_tab_hover = { bg_color = "#222228", fg_color = "#B3ADAD" },
    new_tab = { bg_color = "#121212", fg_color = "#90947A" },
    new_tab_hover = { bg_color = "#222228", fg_color = "#CC6528" },
  },
}
