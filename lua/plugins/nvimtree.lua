return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup(require("configs.nvimtree"))
  end,
}
