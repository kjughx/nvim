---@class ChadrcConfig ChadrcConfig
local M = {}

local highlights = require "highlights"

M.ui = {
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
}

M.plugins = "plugins"

M.lazy_nvim = {
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

-- check core.mappings for table structure
M.mappings = require "mappings"

return M
