return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- NvChad's defaults (lists are replaced, not merged, so keep these)
      "vim",
      "lua",
      "vimdoc",
      -- Svelte, plus the languages it embeds
      "svelte",
      "html",
      "css",
      "javascript",
      "typescript",
    },
  },
}
