local function package(use)
  use { "wbthomason/packer.nvim" }

  -- Convenience
  use { "jiangmiao/auto-pairs" }
  use { "tpope/vim-surround" }
  use { "kyazdani42/nvim-tree.lua" }

  -- Completion
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/cmp-vsnip" }
  use { "hrsh7th/vim-vsnip" }
  use { "hrsh7th/nvim-cmp" }

  -- Language
  use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    -- LSP
    use { "neovim/nvim-lspconfig" }
    use { "williamboman/nvim-lsp-installer" }
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "SmiteshP/nvim-navic" }

  -- Theme
  use { "junegunn/seoul256.vim" }
  use { "arcticicestudio/nord-vim" }

  -- UI
  use { "kyazdani42/nvim-web-devicons" }
  use { "lewis6991/gitsigns.nvim" }
  use { "nvim-lua/plenary.nvim" }
  use { "nvim-lualine/lualine.nvim" }
  use { "nvim-telescope/telescope.nvim" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run="make" }
  use { "onsails/lspkind-nvim" }
  use { "stevearc/dressing.nvim" }
  use { "rcarriga/nvim-notify" }
  use { "folke/lsp-colors.nvim" }
  use { "s1n7ax/nvim-terminal",
        config = function()
          vim.o.hidden = true
          require('nvim-terminal').setup()
        end,
      }

  -- Optimize
  use { "lewis6991/impatient.nvim" }

end

require("packer").startup(package)
