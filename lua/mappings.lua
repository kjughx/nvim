local M = {}
local null = ""
local map = vim.keymap.set
local unmap = vim.keymap.del

M.disabled = {
  n = {
    ["<leader>rh"] = null,
    ["<leader>ph"] = null,
    ["<leader>fm"] = null,

    ["<leader>tk"] = null,
    ["<leader>cm"] = null,
    ["<C-n>"] = null,
    ["<C-c>"] = null,

    ["<leader>wa"] = null,
    ["<leader>wl"] = null,
    ["<leader>wr"] = null,
    ["<leader>wk"] = null,
    ["<leader>wK"] = null,

    ["<Esc>"] = null,
    ["<TAB>"] = null,

    ["<S-Tab>"] = null,
    ["<Bslash>"] = null,

    ["<leader>x"] = null,
    ["<leader>v"] = null,
    ["<leader>ch"] = null,
    ["<leader>cc"] = null,
    ["<leader>ca"] = null,
    ["<leader>n"] = null,
    ["<leader>rn"] = null,
    ["<leader>rN"] = null,

    ["<leader>f"] = null,
    ["<leader>b"] = null,
  },

  i = {
    -- go to  beginning and end
    ["<C-b>"] = null,
    ["<C-e>"] = null,
  },
}

M.general = {
  n = {
    ["<leader>h"] = { "<cmd> noh <CR>", "no highlight" },

    ["<leader>w"] = { ":w <CR>", "save file" },
    ["<leader>q"] = { ":q <CR>", "quit file" },

    ["<leader>e"] = { ":Lexplore<cr>", "toggle netrw" },

    ["<C-j>"] = { ":m +1<CR>==" },
    ["<C-k>"] = { ":m -2<CR>==" },
    ["<C-Up>"] = {":horizontal resize +5 <cr>"},
    ["<C-Down>"] = {":horizontal resize -5 <cr>"},
    ["<C-Right>"] = {":vertical resize -5 <cr>"},
    ["<C-Left>"]  = {":vertical resize +5 <cr>"},

  },

  v = {
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
    ["<C-j>"] = { ":m '>+1<CR>gv=gv" },
    ["<C-k>"] = { ":m '<-2<CR>gv=gv" },
  },
}

M.tabufline = {
  n = {
    ["<leader>c"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "goto next buffer",
    },

    -- cycle through buffers
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    -- cycle through buffers
    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "goto previous buffer",
    },
  },
}

M.gitsigns = {
  -- Actions
  n = {
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },

    ["<leader>gs"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage hunk",
    },

    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
    ["<leader>lr"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
    ["<leader>ld"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    }
  },
}

M.telescope = {
  n = {
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
  },
}

M.neogit = {
    n = {
        ["<leader>gg"] = {"<cmd> Neogit<cr>", "Open Neogit"}
    }
}

return M
