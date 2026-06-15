local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = { "ucs-boms", "utf-8", "euc-jp", "cp932" }
opt.fileformats = { "unix", "dos", "mac" }
opt.ambiwidth = "double"

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

opt.incsearch = true
opt.smartcase = true
opt.hlsearch = true

opt.whichwrap = "b,s,h,l,<,>,[,],~"
opt.number = true
opt.cursorline = true
opt.wildmenu = true
opt.history = 500
opt.backspace = { "indent", "eol", "start" }
opt.completeopt = { "menuone", "noinsert" }

opt.laststatus = 2
opt.showmode = true
opt.showcmd = true
opt.ruler = true
opt.termguicolors = true

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
