-- Pull wezterm API
local wezterm = require("wezterm")

return {
	default_domain = "WSL:Ubuntu",
	color_scheme = "Tokyo Night Moon",
	font_size = 14.0,
	line_height = 1.2,
	font = wezterm.font_with_fallback({
		"FantasqueSansM Nerd Font",
		"JetBrainsMono Nerd Font",
		"ComicCodeLigatures Nerd Font",
	}),
	-- Remove terminal padding
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}
