vim.cmd("source ~/.config/nvim/utils.vim")
local use = require('plugins')
require('lsp')
--vim.cmd("colorscheme everblush")
require('onedarkpro').load()
vim.g.mapleader = ","
vim.cmd("set autoread")
vim.cmd("au FocusGained,BufEnter * :silent! !")
require('lualine').setup({options = { theme = 'everblush' }})
require'nvim-tree'.setup {}
require'hop'.setup()

--[
-- Mapping Functions
--]
function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- Normal Mode mapping
function nmap(shortcut, command, silent)
    map('n', shortcut, command)
end

-- Insert Mode mapping
function imap(shortcut, command)
    map('i', shortcut, command)
end

-- Visaul Mode mapping
function vmap(shortcut, command)
    map('v', shortcut, command)
end

--[
-- Bindings
--]

-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader><tab>", "<cmd>Telescope find_files<cr>") 
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")
-- Reload init.lua / init.vim
nmap("<leader>ll", "<cmd>source ~/.config/nvim/init.lua<cr>")
-- Nvim tree
nmap("<C-n>", "<cmd>NvimTreeToggle<cr>")
nmap("R", "<cmd>NvimTreeRefresh<cr>")
-- Hop
nmap("<leader>w", "<cmd>HopWord<cr>")
nmap("<leader>j", "<cmd>HopLine<cr>")
-- Misc
nmap("<leader>t", "<C-w>s <C-w>j <cmd>term<cr><C-w>20-")
nmap("<leader>u", "20<C-w>-")
imap("jk", "<esc>")
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

