local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'  -- Manager
  use {
    'svrana/neosolarized.nvim', -- Colorscheme
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons'   -- File icons
  use 'glepnir/lspsaga.nvim'           -- Lsp uis
  use 'hoob3rt/lualine.nvim'           -- Statusline
  use 'L3MON4D3/LuaSnip'               -- Snippet
  use 'onsails/lspkind-nvim'           -- Vs-code-like pictograms
  use 'hrsh7th/cmp-buffer'             -- Nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'           -- Nvim-cmp source for Neovim's built-in Lsp
  use 'hrsh7th/nvim-cmp'               -- Completion
  use 'neovim/nvim-lspconfig'          -- Lsp
  use {
    'nvim-treesitter/nvim-treesitter', -- Highlights
    run = ':TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim'            -- Use Neovim as a langiage server
  use 'MunifTanjim/prettier.nvim'                  -- Prettier plugin
  use 'williamboman/mason.nvim'                    -- Lsp tool
  use 'williamboman/mason-lspconfig.nvim'          -- Lsp config tool

  use 'windwp/nvim-autopairs'                      -- Autotag
  use 'windwp/nvim-ts-autotag'                     -- Autopair

  use 'nvim-lua/plenary.nvim'                      -- Common utils
  use 'nvim-telescope/telescope.nvim'              -- Telescope
  use 'nvim-telescope/telescope-file-browser.nvim' -- Telescope file browser

  use 'akinsho/nvim-bufferline.lua'                -- Tabs
  use 'norcalli/nvim-colorizer.lua'                -- Colorizer

  use 'lewis6991/gitsigns.nvim'                    -- Gitsigns
  use 'dinhhuy258/git.nvim'                        -- For git blame & browsing
end)
