local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- serach settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus"
-- slit windows
opt.splitright = true
opt.splitbelow = true

-- enable confirm
opt.confirm = true

-- disable swapfiles
vim.o.swapfile = false

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

opt.iskeyword:append("-")
