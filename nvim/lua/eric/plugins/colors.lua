require("tokyonight").setup({
    style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    transparent = true, -- Enable this to disable setting the background color
    styles = {
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
    },
    on_colors = function(colors)
        colors.bg_statusline = colors.none
    end,
})

vim.cmd.colorscheme "tokyonight-night"
