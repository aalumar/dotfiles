-- DAP (Debug Adapter Protocol) disassembler (view asm code)
return {
  "jorenar/nvim-dap-disasm",
  lazy = false,
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("configs.dap-asm-config")
  end,
}
