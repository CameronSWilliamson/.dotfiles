vim.cmd("source ~/.config/nvim/utils.vim")
local use = require('plugins')
require('lsp')
require('bindings')
vim.cmd("colorscheme dracula")
--vim.cmd("colorscheme everblush")
--require('onedarkpro').load()
vim.cmd("set autoread")
vim.cmd("au FocusGained,BufEnter * :silent! !")
require('lualine').setup({options = { theme = 'everblush' }})
require'nvim-tree'.setup {}
require'hop'.setup()
require('rust-tools').setup({})
require('glow').setup {}
require("startup").setup({theme = 'dashboard'})
require("luasnip.loaders.from_snipmate").lazy_load()
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldlevel = 99
