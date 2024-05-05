-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use{ "catppuccin/nvim", as = "catppuccin" }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('nvim-tree/nvim-web-devicons')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {

		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({
      "stevearc/oil.nvim",
      config = function()
          require("oil").setup()
      end,
  })

  use {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
          require('dashboard').setup {
              --theme = 'doom',
          }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
  }
end)
