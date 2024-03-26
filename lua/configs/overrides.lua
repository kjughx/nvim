local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "rust",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    ignore = true,
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    hide_root_folder = false,
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, action = "edit", mode = "n" },
        { key = "h", action = "close_node" },
        { key = "v", action = "vsplit" },
        { key = "C", action = "cd" },
        { key = "I", action = "toggle_git_ignored" },
      },
    },
  },
}

local cmp = require "cmp"
M.cmp = {
  completion = {
    completeopt = "menu,menuone,noselect,noinsert",
  },

  mapping = {
    ["<CR>"] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = false },
  },
}

M.neogit = {
    kind = "split",
}

return M
