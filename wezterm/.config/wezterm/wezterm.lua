-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font('Fira Code')
config.font_size = 20

config.font_rules = {
  {
    intensity = 'Bold',
    italic = false,
    font = wezterm.font('Fira Code', {
      weight = 'Bold',
      synthesize_bold = true -- Force synthetic bold on top
    }),
  },
}

config.enable_tab_bar = false

-- config.window_decorations = "RESIZE"
config.color_scheme = "Gruvbox dark, medium (base16)"

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
-- and finally, return the configuration to wezterm
return config
