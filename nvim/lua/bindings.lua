function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end
function nmap(shortcut, command, silent)
    map('n', shortcut, command)
end
function imap(shortcut, command)
    map('i', shortcut, command)
end
function vmap(shortcut, command)
    map('v', shortcut, command)
end
function tmap(shortcut, command)
    map('t', shortcut, command)
end
-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader><tab>", "<cmd>Telescope find_files<cr>") 
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")
-- Reload init.lua / init.vim
nmap("<leader>ll", "<cmd>source ~/.config/nvim/init.lua<cr>")
-- Nvim tree
nmap("<leader>n", "<cmd>NvimTreeToggle<cr>")
nmap("R", "<cmd>NvimTreeRefresh<cr>")
-- Hop
nmap("<leader>s", "<cmd>HopWord<cr>")
nmap("<leader>j", "<cmd>HopLine<cr>")
-- Misc
nmap("<leader>t", "<C-w>s <C-w>j <cmd>term<cr><C-w>20-")
nmap("<leader>u", "20<C-w>-")
imap("jk", "<esc>")
imap("JK", "<esc>")
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")
tmap("<Esc>", "<C-\\><C-n>")
tmap("jk", "<C-\\><C-n>")
tmap("JK", "<C-\\><C-n>")
nmap("<leader>bb", "<cmd>tabedit ~/.config/nvim/Bindings.md<cr>")
nmap("<leader>mp", "<cmd>MarkdownPreviewToggle<cr>")
nmap("<leader>lts", "<cmd>tabedit ~/.config/nvim/snippets/tex.snippets<cr>")
nmap("<leader>vtc", "<cmd>VimtexCompile<cr>")
nmap("<leader>vtcl", "<cmd>VimtexClean<cr>")
nmap("<leader>tn", "<cmd>tabnew<cr>")
nmap("<A-a>", "<C-a>")
nmap("<A-x>", "<A-x>")
nmap("<F5>", "<cmd>UndotreeToggle<cr>")
