vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'nvim-treesitter/nvim-treesitter' -- Syntax Highlighting plugin
    use {
        'nvim-lualine/lualine.nvim', -- Airline at the bottom
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'mangeshrex/everblush.vim'} -- Theme
    use {
        'kyazdani42/nvim-tree.lua', -- Filetree on left side
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    use { 'tpope/vim-surround' }
    use { 
        'phaazon/hop.nvim',
        branch = 'v1',
    }
    use 'olimorris/onedarkpro.nvim'
    use 'dracula/vim'
    use 'simrat39/rust-tools.nvim'
    -- use 'mhinz/vim-startify'
    --use 'fatih/vim-go'
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    }
    use 'github/copilot.vim'
    use 'airblade/vim-gitgutter'
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'vimwiki/vimwiki'
    use 'lervag/vimtex'
    use 'KeitaNakamura/tex-conceal.vim'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use 'bfrg/vim-cpp-modern'
    use {"ellisonleao/glow.nvim"}
    use {"tpope/vim-commentary"}
    use {"mbbill/undotree"}
    use {"mhartington/formatter.nvim"}
end)
