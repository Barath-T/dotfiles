return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function ()
      vim.cmd.colorscheme("tokyonight")
      vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
      vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
    end
  },
}
