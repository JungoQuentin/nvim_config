--MAPPING !!
local nnoremap = require("qjungo.keymap").nnoremap
require("qjungo.cmd")

vim.g.mapleader=";"
nnoremap("<leader>f", "<cmd>lua require'telescope.builtin'.find_files{}<CR>")
nnoremap("<leader>h", "<cmd>Stdheader<CR>")
nnoremap("<leader>t", "<cmd>Ex<CR>")
-- TODO nnoremap("<leader>r", "<cmd>Ex<CR>") -- rustfmt pour le current file !
nnoremap("<leader>hp", "<cmd>lua addHeaderProtection()<CR>")

