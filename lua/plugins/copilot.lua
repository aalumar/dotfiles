return { 
  -- This comment was typed by Copilot
  "zbirenbaum/copilot.lua",
  dependencies = {
    "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
  },
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-l>",      -- Accept suggestion
          accept_word = false,
          accept_line = false,
          next = "<M-]>",        -- Next suggestion
          prev = "<M-[>",        -- Previous suggestion
          dismiss = "<C-]>",     -- Dismiss suggestion
        },
      },
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
        layout = {
          position = "right",
          ratio = 0.4
        },
      },
      filetypes = {
        ["*"] = true,  -- Enable for all filetypes by default
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
    })
    -- Make Copilot suggestions visible with a distinct gray color
    vim.api.nvim_set_hl(0, "CopilotSuggestion", {
      fg = "#555555",
      ctermfg = 8,
      italic = true,
    })
  end,
}
