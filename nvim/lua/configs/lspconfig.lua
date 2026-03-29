-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust_analyzer", "openscad_lsp" }
vim.lsp.enable(servers)
