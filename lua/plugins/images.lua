return {
  "3rd/image.nvim",
  lazy = false,
  -- Using magick_cli instead of LuaRocks optional build so we turn it off
  build = false,
  config = function()
    require("image").setup({
      processor = "magick_cli",
      backend = "kitty",
      hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif", "*.svg" },
    })
  end,
}
