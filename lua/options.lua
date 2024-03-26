require "nvchad.options"

local opt = vim.opt
local g = vim.g

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

opt.list = true
opt.listchars = {
  space = "·",
  tab = "»·",
  trail = "·",
}

g.netrw_keppdir = 0
g.netrw_winsize = 30
g.netrw_banner = 0
g.netrw_localcopydircmd = 'cp -r'

local notify = vim.notify
vim.notify = function(msg, ...)
  if msg:match("warning: multiple different client offset_encodings") then
    return
  end

  notify(msg, ...)
end
