local builtin = require('telescope.builtin')
--local buffer = require('bufferline')

vim.g.mapleader = ' '

-- Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Custom
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>db', vim.cmd.Ex)

-- Bufferline
vim.keymap.set('n', '<S-l>', vim.cmd.bnext, {})
vim.keymap.set('n', '<S-h>', vim.cmd.bprev, {})

-- NvimTree
vim.keymap.set('n', '<C-b>', vim.cmd.NvimTreeToggle, {})
