local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local mux = wezterm.mux

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 19
config.color_scheme = 'Kanagawa (Gogh)'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_padding = {
  left = '0cell',
  right = '0cell',
  top = '0cell',
  bottom = '0cell',
}
config.term = 'screen-256color'

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config
