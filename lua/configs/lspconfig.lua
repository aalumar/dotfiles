require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "dartls", "ruff" }
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
