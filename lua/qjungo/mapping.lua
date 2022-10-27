--MAPPING !!
local nnoremap = require("qjungo.keymap").nnoremap
require("qjungo.cmd")

vim.g.mapleader=" "
nnoremap("<leader>f", "<cmd>lua require'telescope.builtin'.find_files{}<CR>")
nnoremap("<leader>h", "<cmd>Stdheader<CR>")
nnoremap("<leader>t", "<cmd>Explore<CR>")
nnoremap("<leader>hp", "<cmd>lua addHeaderProtection()<CR>")
nnoremap("<leader>l", "<cmd>lua vim.lsp.buf.formatting()<CR>")
nnoremap("<leader>c", "<cmd>Copilot disable<CR>")
nnoremap("<leader>C", "<cmd>Copilot enable<CR>")

