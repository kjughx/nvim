-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type HLTable
M.override = {

  IndentBlanklineContextStart = {
    bg = "#282A36",
  },
  DiffAdd = {
    fg = "#b8bb26",
  },
  DiffDelete = {
    bg = "#fb4934",
  },
  Comment = {
    italic = true,
  },
}

return M
