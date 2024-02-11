local wezterm = require 'wezterm'

return {
    default_prog = { "bash", "-lc", [[exec fish --features qmark-noglob]] },
    initial_rows = 32,
    initial_cols = 250,
    color_scheme = "Dracula",
}
