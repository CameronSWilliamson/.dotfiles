local hop = require('hop')

vim.keymap.set('n', '<leader>s', function()
        hop.hint_char1()
    end
)
hop.setup()
