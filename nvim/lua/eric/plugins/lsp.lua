require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "rust_analyzer" },
}

require("lspconfig").rust_analyzer.setup{}

-- Keymaps
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float)

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    end,
})
