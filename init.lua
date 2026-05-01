-- Required for NvChad's theme system
vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
-- Sets leader key to space before lazy loads, otherwise some mappings will be missed
vim.g.mapleader = " "

-- The standard lazy.nvim setup functions
-- Checks if lazy.nvim is installed, and if not clones it (blob:none filter reduces clone time)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(lazypath)

-- Pulls lazy's options
local lazy_config = require("configs.lazy")

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false, -- Setting NvChad lazy load to false (must load eagerly)
    branch = "v2.5",
    import = "nvchad.plugins",
  },
  { import = "plugins" },
}, lazy_config)

-- These lines are specific to NvChad, they are used to load pre-compiled Lua files from its Base46 engine to speed up startup time
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("options")
require("autocmds")

-- Ensure all plugins are loaded before setting mappings
vim.schedule(function()
  require("mappings")
end)
