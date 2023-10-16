local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {
        "projekt0n/caret.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme caret]])
        end
    },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "VonHeikemen/lsp-zero.nvim", branch = "v1.x",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lua",
            "L3MON4D3/LuaSnip",
        }
    },
    "simrat39/rust-tools.nvim",
    "tpope/vim-fugitive",
    "mbbill/undotree",
    "tpope/vim-surround",
    "airblade/vim-gitgutter",
    "phaazon/hop.nvim",
    "theprimeagen/harpoon",
    "nvim-treesitter/nvim-treesitter",
})
