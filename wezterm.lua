-- Pull wezterm API
local wezterm = require("wezterm")

-- Start in Fullscreen
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

local dimmer = { brightness = 0.1 }

-- This will hold the configuration
local config = wezterm.config_builder()

return {
	adjust_window_size_when_changing_font_size = false,
	audible_bell = "Disabled",
	default_domain = "WSL:Ubuntu",
	color_scheme = "Tokyo Night Moon",
	font_size = 14.0,
	line_height = 1.2,
	font = wezterm.font_with_fallback({
		"FantasqueSansM Nerd Font",
		"JetBrainsMono Nerd Font",
		"ComicCodeLigatures Nerd Font",
	}),
	force_reverse_video_cursor = true,
	-- Remove terminal padding
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	-- Enable wayland support
	enable_wayland = true,
	use_ime = false,
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	-- Remove tab bar
	enable_tab_bar = true,
	-- Hide tab bar
	hide_tab_bar_if_only_one_tab = true,
	exit_behavior = "Close",
	background = {
		{
			source = {
				File = "",
			},
			height = "Contain",
			width = "Contain",
			horizontal_align = "Center",
			vertical_align = "Middle",
			repeat_x = "NoRepeat",
			repeat_y = "NoRepeat",
			opacity = 0.1,
		},
	},
}
