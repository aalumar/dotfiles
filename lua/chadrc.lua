-- NvChad-specific UI configuration. This is not core Neovim. Controls things NvChad owns: which theme, whether to show the dashboard, tabufline behavior.
---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everforest",
}

-- Loads the NvChad dashboard on startup
M.nvdash = {
  load_on_startup = true,
}

M.ui = {
  tabufline = {
    order = { "buffers", "tabs", "btns" },
  },
}

return M
