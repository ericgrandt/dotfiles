require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.expandtab = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.wrap = false

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true

vim.diagnostic.config({
    float = {
        border = 'rounded',
    },
})

vim.cmd.colorscheme "tokyonight-night"
