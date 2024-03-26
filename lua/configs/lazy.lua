local highlights = require "highlights"

return {
  defaults = { lazy = true },
  install = { colorscheme = { "nvchad" } },

  ui = {
  theme = "gruvbox",
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,

  statusline = {
    theme = "vscode_colored",
    overriden_modules = function(modules)
        table.remove(modules, 3)
        table.remove(modules, 9)
    end
  },

  nvdash = {
    enabled = false,
  },

  cheatsheet = {
    enabled = false,
  },

  icons = {
    ft = "",
    lazy = "󰂠 ",
    loaded = "",
    not_loaded = "",
    },
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
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
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}
