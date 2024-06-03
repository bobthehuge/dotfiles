vim.o.termguicolors = true
vim.o.background = "dark"

require("gruvbox").setup({
  terminal_colors = true,
  constrast = "soft"
})

vim.cmd("colorscheme gruvbox")
