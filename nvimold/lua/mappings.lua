require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", {desc = "Window left"})
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", {desc = "Window down"})
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", {desc = "Window up"})
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", {desc = "Window right"})
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", {desc = "Window previous"})

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
