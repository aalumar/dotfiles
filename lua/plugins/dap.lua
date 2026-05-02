-- DAP (Debug Adapter Protocol) configuration for Neovim
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
  },
  keys = { "<leader>dt", "<leader>dc" },
  config = function()
    require("configs.dapconfig")
  end,
}
