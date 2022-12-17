--MAPPING !!
local nnoremap = require("qjungo.keymap").nnoremap
require("qjungo.cmd")

vim.g.mapleader=" "
-- moving files
nnoremap("<leader>f", "<cmd>lua require'telescope.builtin'.find_files{}<CR>")
nnoremap("<leader>t", "<cmd>Explore<CR>")

-- norm
nnoremap("<leader>l", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")
nnoremap("<leader>h", "<cmd>Stdheader<CR>")
nnoremap("<leader>hp", "<cmd>lua addHeaderProtection()<CR>")

-- Copilot
nnoremap("<leader>c", "<cmd>Copilot disable<CR>")
nnoremap("<leader>C", "<cmd>Copilot enable<CR>")

-- godot
nnoremap("<leader>g", "<cmd>GodotRun<CR>")

function createAndFold()
	vim.cmd("set foldmethod=manual")
	vim.cmd("set foldmethod=syntax")
	vim.cmd("normal! zM")
end

-- folding
nnoremap("<leader>v", "<cmd>lua createAndFold()<CR>")  -- fold all
nnoremap("<leader>V", "<cmd>normal! zR<CR>")  -- unfold all
nnoremap("<leader>O", "<cmd>normal! zo<CR>")  -- unfold recursively
nnoremap("<leader>o", "<cmd>normal! zO<CR>")  -- unfold
nnoremap("<leader>c", "<cmd>normal! zC<CR>")  -- fold
nnoremap("<leader>C", "<cmd>normal! zc<CR>")  -- fold recursively
