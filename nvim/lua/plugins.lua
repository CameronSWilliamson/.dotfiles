local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- My plugins here
    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'neovim/nvim-lspconfig'
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
    use 'simrat39/rust-tools.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
