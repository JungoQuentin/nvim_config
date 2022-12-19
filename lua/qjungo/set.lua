--VISUALS
--vim.opt.guicursor = ""
vim.opt.nu = true		--montre quand meme la pos abs sur le curseur
vim.opt.relativenumber = true	--affiche la distance plutot que la position absolue

vim.opt.tabstop = 4 		--tab visual space
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4		--auto tab ???
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

--current buffer is .cpp -- TODO actualiser a chaque changement de buffer
if vim.fn.expand("%:e") == "cpp" then
	print("cpp")
  vim.opt.tabstop = 2
  vim.opt.softtabstop = 2
  vim.opt.shiftwidth = 2
  --vim.cmd("setlocal ts=4 sw=4")
  --vim.cmd("setlocal expandtab")
  --vim.cmd("setlocal shiftwidth=4")
  --vim.cmd("setlocal softtabstop=4")
  --vim.cmd("setlocal noexpandtab")
end


--Folding with treesitter
--vim.opt.foldmethod = "syntax"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
