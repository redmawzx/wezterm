-- Pull wezterm API
local wezterm = require("wezterm")

-- Start in Fullscreen
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

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
	-- Remove terminal padding
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	enable_tab_bar = false,
}
