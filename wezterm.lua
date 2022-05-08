local dracula = require 'dracula'; -- https://github.com/dracula/wezterm
local wezterm = require 'wezterm';

return {
  colors = dracula,
  font = wezterm.font("FiraCode Nerd Font", {weight="Medium"}),
  font_size = 16.0,
  initial_cols = 80,
  initial_rows = 24,
  show_tab_index_in_tab_bar = false,
  window_decorations = "RESIZE",
  window_frame = {
    font_size = 16.0,
    active_titlebar_bg = "#282a36",
    inactive_titlebar_bg = "#282a36",
  },
  window_padding = {
    left = 48,
    right = 48,
    top = 48,
    bottom = 48,
  },
  keys = {
    { key="LeftArrow",  mods="OPT", action=wezterm.action{SendString="\x1b\x62"} },
    { key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1b\x66"} },
    { key="LeftArrow",  mods="CMD", action=wezterm.action{SendString="\x01"} },
    { key="RightArrow", mods="CMD", action=wezterm.action{SendString="\x05"} },
    { key="z",          mods="CMD", action=wezterm.action{SendString="\x1f"} },
  },
}
