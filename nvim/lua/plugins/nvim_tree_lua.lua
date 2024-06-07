-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-tree/nvim-tree.lua
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup()
        end
    },
    "nvim-tree/nvim-web-devicons"
}
