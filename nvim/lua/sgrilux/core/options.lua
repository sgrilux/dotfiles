local opt = vim.opt

-- linee numbers
opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- cursor
opt.cursorline = true

-- appareance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.cursorcolumn = true

opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.mouse = "a"
opt.autoread = true
opt.foldlevelstart = 99
opt.scrolloff = 7

-- backup
opt.backup = false
opt.writebackup = false
opt.swapfile = false
