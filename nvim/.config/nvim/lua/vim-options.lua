vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false




-- Write changes 
vim.keymap.set('n', 'ZW', '<Esc>:w<CR>')

vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set('n', '<C-c>', 'gg0vG$"+y')
vim.keymap.set('n', '<C-v>', '"+p')

-- Change current line to caps
vim.keymap.set('n', '<leader>cl', 'V~', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true


vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})
