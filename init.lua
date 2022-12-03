require("qjungo")

-- Permet d'ouvrir des config dans les projets !!!
-- disable built-in local config file support
vim.opt.exrc = false
require("exrc").setup({
  files = {
    --".nvimrc.lua",
    --".nvimrc",
    ".exrc.lua",
    --".exrc",
  },
})

--42
vim.g.user42 = "qjungo"
vim.g.mail42 = "qjungo@student.42lausanne.ch"

--FILE / SWAP / BACKUPS
vim.opt.undofile = true
vim.g.vim_home_path = "~/nvim"
vim.g.undodir = string.format("%s/undo", vim.g.vim_home_path)
vim.opt.swapfile = false	--evite les swap (tjs le bordel)
vim.opt.backup = false

vim.cmd("syntax on")
--vim.cmd("Copilot disable <CR>")
