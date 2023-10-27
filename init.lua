require("qjungo")

vim.opt.syntax = "on"

-- Permet d'ouvrir des config dans les projets !!!
-- disable built-in local config file support
vim.opt.exrc = false
require("exrc").setup({
  files = {
    ".exrc.lua",
  },
})

-- FILE / SWAP / BACKUPS
vim.opt.undofile = true
vim.g.vim_home_path = "~/nvim"
vim.g.undodir = string.format("%s/undo", vim.g.vim_home_path)
vim.opt.swapfile = false
vim.opt.backup = true
vim.opt.backupdir = '~/.vim/backups'
