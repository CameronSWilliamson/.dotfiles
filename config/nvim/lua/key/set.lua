vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", "<cmd>!format.sh %<cr>")
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>lspr", "<cmd>LspRestart<cr>")
vim.keymap.set('c', 'w!!', ':w ! sudo tee % > /dev/null')
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.termguicolors = true
vim.opt.colorcolumn = "120"
