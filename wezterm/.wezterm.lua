local wezterm = require 'wezterm'
local mux = wezterm.mux
local project_dir = wezterm.home_dir .. '/source/repos'

wezterm.on('gui-startup', function(cmd)
    local tab, editor_pane, window = mux.spawn_window {
        workspace = 'coding',
        cwd = project_dir,
        args = args,
    }
    local build_pane = editor_pane:split {
        direction = 'Bottom',
        size = 0.2,
        cwd = project_dir,
    }
    local wsl_pane = build_pane:split {
        direction = 'Right',
        args = { 'wsl' }
    }

    mux.set_active_workspace 'coding'
end)

return {
    color_scheme = 'Catppuccin Mocha',
    default_cwd = project_dir,
    default_prog = { '' }
    enable_tab_bar = false,
    font_size = 16.0,
    keys = {
        {
            key = 'q',
            mods = 'CTRL',
            action = wezterm.action.QuitApplication,
        },
	},
    window_background_opacity = 0.95,
    wsl_domains = {
        {
            name = 'WSL:Ubuntu-22.04',
            distribution = 'Ubuntu-22.04',
            default_cwd = '/mnt/' .. project_dir
        }
    },
}
