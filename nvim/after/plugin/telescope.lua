local builtin = require('telescope.builtin')
vim.keymap.set('n', "<leader><tab>", builtin.find_files, {})
vim.keymap.set('n', "<leader>fg", builtin.live_grep, {})
vim.keymap.set('n', "<leader>g<tab>", builtin.git_files, {})

