-- Encoding
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

-- Smart Scrolling
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Absolute Line No.
vim.wo.number = true
vim.wo.relativenumber = false

-- Highlight Current Line
vim.wo.cursorline = true

-- Left Icon
vim.wo.signcolumn = "yes"

-- Soft-wrap Line
vim.wo.colorcolumn = "80"

-- 4-Space Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.expandtab = true
vim.o.expandtab = true

-- Fast Movement Length
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- Indent
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- Upper/Lower Case Insensitive
vim.o.ignorecase = true
vim.o.smartcase = true

-- No-highlight Search
vim.o.hlsearch = false

-- In-time Search
vim.o.incsearch = true

-- Command Windows Height
vim.o.cmdheight = 3

-- File Dynamic Flush
vim.o.autoread = true
vim.bo.autoread = true

-- No Wrap-line
vim.wo.wrap = false

-- Boundary Line
vim.o.whichwrap = "<,>,[,]"

-- Hidden Buffered Buffer
vim.o.hidden = true

-- Mouse Friendly
vim.o.mouse = "a"

-- No Backup File
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- More Frequent Updating
vim.o.update = 300

-- Hotkey Timeout
vim.o.timeoutlen = 500

-- Split Window Position
vim.o.splitbelow = true
vim.o.splitright = true

-- Auto Completion
vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.o.wildmenu = true
vim.o.pumheight = 10

-- Style
vim.o.background = "light"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- Unseen Character Display
vim.o.list = true
vim.o.listchars = "space:·"

-- No Passing Messages
vim.o.shortmess = vim.o.shortmess .. "c"

-- Show Tab Line
vim.o.showtabline = 2

-- No Mode Hint
vim.o.showmode = false
