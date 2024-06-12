return {
    {
        "RedsXDD/neopywal.nvim",
        name = "neopywal",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("neopywal").setup({

                use_wallust = true,

                transparent = true,

            })

            vim.cmd.colorscheme("neopywal")

            require("lualine").setup {
                options = {
                    theme = "neopywal",
                },
            }
        end
    }
}
