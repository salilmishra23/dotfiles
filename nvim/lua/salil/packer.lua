-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'nvim-telescope/telescope-ui-select.nvim' }
    use 'folke/tokyonight.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }
    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'nvim-treesitter/playground'
    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }
    use {
        "folke/noice.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { "numToStr/Comment.nvim" }
end)
