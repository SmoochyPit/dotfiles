local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

--[[ 
require("lazy").setup({
'nvim-lualine/lualine.nvim',
'instant-markdown/vim-instant-markdown',
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
},
'neovim/nvim-lspconfig',
'williamboman/mason.nvim',
'williamboman/mason-lspconfig.nvim',
{ 'uZer/pywal16.nvim', name = "pywal16" }
})

require("plugins/lualine-setup")
require("plugins/instant-markdown")
require("plugins/mason-setup")
require("plugins/treesitter-setup")
require("plugins/pywal16-setup")
--]]
