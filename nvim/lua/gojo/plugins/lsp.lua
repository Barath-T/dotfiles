return {
  --- Uncomment the two plugins below if you want to manage the language servers from neovim
  --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md

  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
  },

  config = function()
    local lsp = require('lsp-zero').preset({
      manage_nvim_cmp = {
        set_sources = 'recommended'
      }
    })

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {
        'tsserver',
        'eslint',
        'lua_ls',
        'rust_analyzer',
      },
      handlers = {
        lsp.default_setup,
      },
    })


    require 'lspconfig'.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }

    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local cmp_mappings = lsp.defaults.cmp_mappings({
      ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      ['<C-Space'] = cmp.mapping.complete(),
    })

    lsp.setup({
      mapping = cmp_mappings
    })


    lsp.on_attach(function(client, bufnr)
      local opts = { buffer = bufnr, remap = false }
      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts);
      vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts);
      vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts);
      vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts);
      vim.keymap.set("n", "<leader>vi", function() vim.lsp.buf.implementation() end, opts);
      vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.references() end, opts);
    end)

    lsp.setup()
  end
}
