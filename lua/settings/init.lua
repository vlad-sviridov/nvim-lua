local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.colorcolumn = "79"
set.number = true

set.hlsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = "utf-8"
set.termguicolors = true
set.breakindent = true
set.completeopt = "menuone,noselect"

-- set.relativenumber = true
set.cursorline = true
set.cursorlineopt = "number"

set.clipboard = "unnamedplus"
set.mouse = "a"

set.fillchars = "eob: "

vim.notify = require("notify")

