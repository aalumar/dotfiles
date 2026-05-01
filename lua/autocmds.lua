-- Autocmds (autocommands) allows executing commands automatically when specific events occur, such as opening, saving, or changing files/buffers
-- This just loads the standard NvChad autocmds
require("nvchad.autocmds")

-- Remove trailing whitespace on save (excluding markdown files)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Check if the current file is markdown
    if vim.bo.filetype == "markdown" then
      return
    end

    -- Save cursor position
    local save_cursor = vim.fn.getpos(".")
    -- Strip trailing whitespace
    vim.cmd([[%s/\s\+$//e]])
    -- Restore cursor position
    vim.fn.setpos(".", save_cursor)
  end,
})
