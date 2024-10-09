require("paq"){
  "savq/paq-nvim", -- Let Paq manage itself

  -- dependencies

  -- colorschemes
  {
    'rose-pine/neovim',
    as = 'rose-pine',
  },
  {
    "folke/tokyonight.nvim",
    as="tokyonight",
  },

  -- treesitter
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

  -- status line
  {"echasnovski/mini.statusline", as="mini.statusline"},

  -- undotree
  {'mbbill/undotree', as="undotree"},

  -- git / fugitive
  {'tpope/vim-fugitive', as="fugitive"},

}

-- colorscheme config
vim.cmd.colorscheme("tokyonight")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NonText guibg=NONE ctermbg=NONE")

-- treesitter config
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "cpp", "rust", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- status line config
-- No need to copy this inside `setup()`. Will be used automatically.
require'mini.statusline'.setup{
  -- Content of statusline as functions which return statusline string. See
  -- `:h statusline` and code of default contents (used instead of `nil`).
  content = {
    -- Content for active window
    active = nil,
    -- Content for inactive window(s)
    inactive = nil,
  },

  -- Whether to use icons by default
  use_icons = true,

  -- Whether to set Vim's settings for statusline (make it always shown)
  set_vim_settings = true,
}

-- undotree config
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- git / fugitive config
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>dif", vim.cmd.Gvdiff)

-- dependency config
