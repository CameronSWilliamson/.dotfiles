vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim'} }
	}

    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
	}

    use {'navarasu/onedark.nvim'}
    use {'projekt0n/caret.nvim'}
	use {'nvim-treesitter/playground'}
	use {'theprimeagen/harpoon'}
	use {'mbbill/undotree'}
	use {'tpope/vim-fugitive'}
    use {'tpope/vim-surround'}
    use {'f-person/git-blame.nvim'}
    use {'airblade/vim-gitgutter'}
    use {'phaazon/hop.nvim'}
    use {'simrat39/rust-tools.nvim'}
end)
