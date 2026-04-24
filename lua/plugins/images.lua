return {
  "3rd/image.nvim",
  lazy = false,
  build = false,
  config = function()
    require("image").setup {
      processor = "magick_cli",
      backend = "kitty",
      hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif", "*.svg" },
    }
  end,
}
