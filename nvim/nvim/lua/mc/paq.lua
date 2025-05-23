require("paq"){
  "savq/paq-nvim", -- Let Paq manage itself

  -- dependencies

  -- colorschemes
  {
    'rose-pine/neovim',
    as = 'rosepine',
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

  { "nvim-tree/nvim-web-devicons", opts = {}, as="devicons"},

}

-- dependency config

