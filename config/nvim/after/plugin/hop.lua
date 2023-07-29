local hop = require('hop')

vim.keymap.set('n', '<leader>s', function()
        hop.hint_char1()
    end
)

vim.keymap.set('n', '<leader><leader>s', function ()
        hop.hint_char2()
    end
)
hop.setup()
