return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- or omit for latest
    ft = { 'rust' },
    config = function()
      vim.g.rustaceanvim = {
        server = {
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
          settings = {
            ['rust-analyzer'] = {
              cargo = { allFeatures = true },
              checkOnSave = {
                command = 'clippy',
              },
            },
          },
        },
      }
    end,
  },
}

