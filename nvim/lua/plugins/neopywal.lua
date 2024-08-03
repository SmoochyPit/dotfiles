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

                transparent_background = true,

                custom_highlights = function(colors)
                    local U = require("neopywal.util")
                    return {
                        Comment = { fg = U.lighten(colors.background, 70) },
                    }
                end
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
