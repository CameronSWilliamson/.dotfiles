require("key.packer")
require("key.remap")
require("key.set")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank = augroup("HighlightYank", {})

autocmd('TextYankPost', {
    group = yank,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 100,
        })
    end,
})

vim.g.netrw_banner = 0
