local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
    callback = function()
        vim.opt.formatoptions:remove { "c", "r", "o" }
    end,
    group = general,
    desc = "Disable New Line Comment",
})
