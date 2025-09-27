require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", { noremap = true, silent = true, desc = "Toggle Background Transparency" })
map("n", "<leader>dw", ":lua vim.diagnostic.open_float()", { noremap = true, silent = true, desc = "Show diagnostic floating window" })
