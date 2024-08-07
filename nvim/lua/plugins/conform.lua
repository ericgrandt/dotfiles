return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        keys = {
            {
                "<leader>cf",
                function()
                    require("conform").format({ async = true, lsp_fallback = true })
                end,
                mode = { "n", "v" },
                desc = "Format buffer"
            }
        },
        opts = {
            notify_on_error = false,
            format_on_save = function(args)
                local disable_ft = { }
                return {
                    timeout_ms = 500,
                    lsp_fallback = not disable_ft[vim.bo[args].filetype],
                }
            end,
            formatters_by_ft = {
                rust = { "rustfmt", lsp_format = "fallback" }
            }
        },
    }
}
