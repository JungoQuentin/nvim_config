
--VISUALS
vim.opt.guicursor = ""

vim.opt.nu = true		--montre quand meme la pos abs sur le curseur
vim.opt.relativenumber = true	--affiche la distance plutot que la position absolue

vim.opt.tabstop = 8 		--tab visual space
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8		--auto tab ???
--vim.opt.expandtab = true
vim.opt.hlsearch = false	--ne highlight pas
vim.opt.incsearch = true	--highlight une recherche
vim.opt.smartindent = true

--vim.opt.wrap = false		--desactive le wrap
vim.opt.hidden = true		--garde le buffer en memoire (TODO enlever si ca lag)
vim.opt.scrolloff = 20		--A partir de n, scroll en haut
vim.opt.cmdheight = 3

vim.opt.colorcolumn = "80"	--bande rouge a 80 characteres
vim.opt.signcolumn = "yes"      --empeche la column de gauche de bouger

