return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = function()
            local harpoon = require("harpoon")
            local keys = {
                {
                    "<leader>ha",
                    function()
                        harpoon:list():add()
                    end,
                },
                {
                    "<leader>hl",
                    function()
                        harpoon.ui:toggle_quick_menu(harpoon:list())
                    end,
                },
                {
                    "<S-h>",
                    function()
                        harpoon:list():prev()
                    end,
                },
                {
                    "<S-l>",
                    function()
                        harpoon:list():next()
                    end,
                },
            }

            return keys
        end
    }
}
