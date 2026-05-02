-- Conform is a code formatter plugin
return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  config = function()
    require("conform").setup(require("configs.conform"))
  end,
}
