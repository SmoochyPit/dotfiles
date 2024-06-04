return {
    {
        "uZer/pywal16.nvim", name = "pywal16",
        config = function()
            require("pywal16").setup()

            require('lualine').setup {
                options = {
                    theme = 'pywal16-nvim'
                }
            }
        end,
    }
}
