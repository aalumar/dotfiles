local dap = require("dap")
local ui = require("dapui")
local dap_virtual_text = require("nvim-dap-virtual-text")

ui.setup({
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.25 },
        { id = "breakpoints", size = 0.25 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 0.25 },
      },
      position = "left",
      size = 40,
    },
    {
      elements = {
        { id = "repl", size = 0.5 },
        { id = "console", size = 0.5 },
      },
      position = "bottom",
      size = 10,
    },
    {
      elements = { { id = "disassembly", size = 1.0 } },
      position = "bottom",
      size = 8,
    },
  },
})

dap_virtual_text.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  ui.close()
end

-- PYTHON DAP CONFIG --
dap.adapters.python = {
  type = "executable",
  command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python", -- picks up the mason debugpy adapter
  args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch file",
    program = "${file}",
  },
}
