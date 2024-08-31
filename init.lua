require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set nu")
vim.cmd("set rnu")

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':b#<CR>', { noremap = true, silent = true })

vim.g.netrw_winsize = 18
vim.o.scrolloff = 8

