-- Loads NvChad's LSP defaults: sets up nvim-cmp capabilities, default keymaps on attach (gd, K, gr, etc.).
require("nvchad.configs.lspconfig").defaults()

-- ruff is a linter and formatter for python, and it can be used as an LSP server to provide linting and formatting capabilities in Neovim. By enabling both pyright and ruff, we have pyright handle type checking and code analysis, while ruff takes care of linting and formattings.
local servers = { "svelte", "cssls", "ruff" }
vim.lsp.enable(servers)

vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoImportCompletions = true,
        -- disableOrganizeImports stops pyright competing with ruff on imports
        disableOrganizeImports = true,
      },
    },
  },
})

vim.lsp.enable("pyright")
