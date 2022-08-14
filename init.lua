require("qjungo")

-- TODO : vim.opt.exrc = true
--              chaque fois qu'on ouvre vim, il check dans le projet
--              si ya pas une init dedans (macro custom)

--42
vim.g.user42 = "qjungo"
vim.g.mail42 = "qjungo@student.42lausanne.ch"

--FILE / SWAP / BACKUPS
vim.opt.undofile = true
vim.g.vim_home_path = "~/nvim"
vim.g.undodir = string.format("%s/undo", vim.g.vim_home_path)
vim.opt.swapfile = false	--evite les swap (tjs le bordel)
vim.opt.backup = false
--vim.g.writebackup = true
--vim.g.directory = string.format("%s/swap", vim.g.vim_home_path)
--vim.g.backupdir = string.format("%s/backup", vim.g.vim_home_path)

vim.cmd("syntax on")
