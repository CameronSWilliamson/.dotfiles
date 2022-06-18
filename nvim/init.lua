vim.cmd("source ~/.config/nvim/utils.vim")
local use = require('plugins')
require('lsp')
require('bindings')
--vim.cmd("colorscheme everblush")
require('onedarkpro').load()
vim.g.mapleader = ","
vim.cmd("set autoread")
vim.cmd("au FocusGained,BufEnter * :silent! !")
require('lualine').setup({options = { theme = 'everblush' }})
require'nvim-tree'.setup {}
require'hop'.setup()
require('rust-tools').setup({})

