vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto"
vim.opt.isfname:append "@-@"

vim.opt.updatetime = 50

vim.g.mapleader = " "
function azhagaku()
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
end

-- vim.highlight.Normal.guibg = "NONE"
-- vim.highlight.NonText.guibg = "NONE"
-- vim.highlight.Normal.ctermbg = "NONE"
-- vim.highlight.NonText.ctermbg = "NONE"
