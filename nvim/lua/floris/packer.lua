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
    'rhysd/conflict-marker.vim',
    config = function()
      -- Configuration for conflict-marker.vim

      -- Change the highlight group for conflict markers
      vim.cmd [[
        highlight ConflictMarkerBegin guibg=NONE
        highlight ConflictMarkerOurs guibg=#2e3a3c
        highlight ConflictMarkerTheirs guibg=#2f3a57
        highlight ConflictMarkerEnd guibg=NONE
        highlight ConflictMarkerCommonAncestorsHunk guibg=#40384d
      ]]

      -- Map keys to navigate conflict markers
      vim.api.nvim_set_keymap('n', '[x', '<Plug>(conflict-marker-prev-hunk)', {})
      vim.api.nvim_set_keymap('n', ']x', '<Plug>(conflict-marker-next-hunk)', {})
    end
  }

  use {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
          require('dashboard').setup {
              theme = 'doom',
              config = {
                  header = {
                      "                                                                       ",
                      "                                                                     ",
                      "       ████ ██████           █████      ██                     ",
                      "      ███████████             █████                             ",
                      "      █████████ ███████████████████ ███   ███████████   ",
                      "     █████████  ███    █████████████ █████ ██████████████   ",
                      "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
                      "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
                      " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
                      "                                                                       ",
                  },
                  center = {
                      { icon = '  ',
                      desc = 'Find  File                              ',
                      icon_hl = 'Title',
                      action = 'Telescope find_files' },
                      { icon = '  ',
                      desc = 'Open Personal dotfiles                  ',
                      action = 'Telescope dotfiles path=~/.config' },
                  },
                  footer = {}
              }
          }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
  }

end)
