require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", { noremap = true, silent = true, desc = "Toggle background transparency" })
map("n", "<leader>dw", ":lua vim.diagnostic.open_float()", { noremap = true, silent = true, desc = "Show diagnostic floating window" })

-- lsp formatting
map("n", "<leader>=", function()
  vim.lsp.buf.format({ async = false })
end, { desc = "Format code with LSP" })

-- debugger
map("n", "<leader>dt", function()
  require("dap").toggle_breakpoint()
end, { desc = "DAP Toggle Breakpoint" })

map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "DAP Continue" })

map("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "DAP Step Into" })

map("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "DAP Step Over" })

map("n", "<leader>du", function()
  require("dap").step_out()
end, { desc = "DAP Step Out" })

map("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "DAP Open REPL" })

map("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "DAP Run Last" })

map("n", "<leader>dq", function()
  require("dap").terminate()
  require("dapui").close()
end, { desc = "DAP Terminate" })

map("n", "<leader>db", function()
  require("dap").list_breakpoints()
end, { desc = "DAP List Breakpoints" })

map("n", "<leader>de", function()
  require("dap").set_exception_breakpoints({ "all" })
end, { desc = "DAP Set Exception Breakpoints" })
