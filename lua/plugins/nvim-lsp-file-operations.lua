-- Plugin that enables automatic LSP updates when renaming, creating, or deleting files in file explorers like nvim-tree or neo-tree. It triggers LSP actions, such as updating import statements across a project when a file is renamed
return {
  "antosha417/nvim-lsp-file-operations",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-tree.lua",
  },
  config = function()
    require("lsp-file-operations").setup()
  end,
}
