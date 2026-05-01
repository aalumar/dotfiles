-- This just loads the standard NvChad mappings
require("nvchad.mappings")

local map = vim.keymap.set

-- : instead of ;
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Toggle transparency
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

-- Open floating diagnostic window
map("n", "<leader>dw", function()
  vim.diagnostic.open_float()
end, { desc = "Show diagnostic" })

-- LSP formatting
map("n", "<leader>=", function()
  vim.lsp.buf.format({ async = false })
end, { desc = "Format code with LSP" })

-- Redo
map("n", "U", "<C-r>", { desc = "Redo" })

-- DAP (debugger)
map("n", "<leader>dt", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Continue" })
map("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "Step Into" })
map("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "Step Over" })
map("n", "<leader>dO", function()
  require("dap").step_out()
end, { desc = "Step Out" })
map("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "Open REPL" })
map("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "Run Last" })
map("n", "<leader>dq", function()
  require("dap").terminate()
  require("dapui").close()
end, { desc = "Terminate" })
map("n", "<leader>dB", function()
  require("dap").list_breakpoints()
end, { desc = "List Breakpoints" })
map("n", "<leader>de", function()
  require("dap").set_exception_breakpoints({ "all" })
end, { desc = "Exception Breakpoints" })
