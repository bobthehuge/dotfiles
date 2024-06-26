require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

require('nvim_comment').setup()

vim.cmd([[set rnu]])
vim.cmd([[set nu]])
vim.cmd([[set cmdheight=0]])
vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set softtabstop=4]])
vim.cmd([[set list]])
vim.cmd([[set listchars=tab:>-]])
vim.cmd([[set expandtab]])
vim.cmd([[set autoindent]])
vim.cmd([[set smartindent]])
