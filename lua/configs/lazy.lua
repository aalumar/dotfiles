return {
  -- Lazy load all plugins
  defaults = { lazy = true },
  -- This isn't the theme of Neovim, it's a fallback color during plugin installation
  -- For the theme, see chadrc.lua
  install = { colorscheme = { "everforest" } },

  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
      },
    },
  },
}
