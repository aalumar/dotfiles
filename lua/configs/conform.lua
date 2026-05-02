-- This configures conform.nvim, the formatter plugin.
return {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Formatter on save
    python = { "ruff_format" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
