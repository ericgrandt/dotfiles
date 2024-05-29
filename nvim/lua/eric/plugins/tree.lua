require("nvim-tree").setup({
    filters = {
        dotfiles = false,
        exclude = {
            '.env'
        }
    }
})
