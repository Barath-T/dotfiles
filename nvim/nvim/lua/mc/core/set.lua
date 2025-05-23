vim.opt.guicursor = ""

-- vim.opt.nu = true
-- vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- file search
-- vim.cmd([[set path+=src/**]])
-- vim.cmd([[set path+=include/**]])
-- vim.cmd([[set path+=tests/**]])
-- vim.cmd([[set path+=~/otherside/rust/]])
-- vim.cmd([[set path+=~/otherside/rust/completed/]])
-- vim.cmd([[set path+=~/otherside/rust/*/src/**]])
vim.cmd([[set path+=~/.config/]])
-- vim.cmd([[set path+=~/otherside/qiskit/qiskit/**/**]])

vim.opt.termguicolors = true
-- vim.cmd("syntax on")

vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto"
vim.opt.isfname:append "@-@"

vim.opt.updatetime = 50

vim.g.mapleader = " "


vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NonText guibg=NONE ctermbg=NONE")

-- vim.highlight.Normal.guibg = "NONE"
-- vim.highlight.NonText.guibg = "NONE"
-- vim.highlight.Normal.ctermbg = "NONE"
-- vim.highlight.NonText.ctermbg = "NONE"
