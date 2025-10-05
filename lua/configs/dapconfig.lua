local dap = require("dap")
local ui = require("dapui")
local dap_virtual_text = require("nvim-dap-virtual-text")

-- Setup DAP UI
ui.setup()

-- Setup Dap Virtual Text
dap_virtual_text.setup()

-- Dart CLI adapter (recommended)
dap.adapters.dart = {
  type = 'executable',
  command = 'dart', 
  args = { 'debug_adapter' },
  options = { 
    detached = false,
  }
}

dap.adapters.flutter = {
  type = 'executable',
  command = 'flutter',
  args = { 'debug_adapter' },
  options = { 
    detached = false,
  }
}

-- DAP configurations
dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "/opt/homebrew/Caskroom/flutter/3.32.2/flutter/bin/cache/dart-sdk/",
    flutterSdkPath = "/opt/homebrew/Caskroom/flutter/3.32.2/flutter/",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "/opt/homebrew/Caskroom/flutter/3.32.2/flutter/bin/cache/dart-sdk/",
    flutterSdkPath = "/opt/homebrew/Caskroom/flutter/3.32.2/flutter/",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  }
}

-- auto open/close UI
dap.listeners.after.event_initialized["dapui_config"] = function()
  ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  ui.close()
end
