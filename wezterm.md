-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Night Owl colorscheme
config.colors = {
-- Basic Colors
foreground = "#d7d7d7", -- Foreground (text) color
background = "#050505", -- Background color
cursor_bg = "#528bff", -- Cursor background color
cursor_border = "#528bff", -- Cursor border color
cursor_fg = "#f8f8f2", -- Cursor text color
selection_bg = "#264f78", -- Selection background color
selection_fg = "#f8f8f2", -- Selection text color

    -- ANSI Colors
    ansi = {
    	"#212e36", -- Black
    	"#ff5c57", -- Red
    	"#5af78e", -- Green
    	"#f3f99d", -- Yellow
    	"#5c99ff", -- Blue
    	"#ff79c6", -- Magenta
    	"#50fa7b", -- Cyan
    	"#f8f8f2", -- White
    },

    -- Bright ANSI Colors
    brights = {
    	"#6272a4", -- Bright Black (Gray)
    	"#ff6e6e", -- Bright Red
    	"#69ff94", -- Bright Green
    	"#fffa9e", -- Bright Yellow
    	"#82aaff", -- Bright Blue
    	"#ff92d0", -- Bright Magenta
    	"#68d8f8", -- Bright Cyan
    	"#ffffff", -- Bright White
    },

}

config.font = wezterm.font("MesloLGL Nerd Font Mono")
config.font_size = 13

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.6
config.macos_window_background_blur = 0

-- and finally, return the configuration to wezterm
return config
