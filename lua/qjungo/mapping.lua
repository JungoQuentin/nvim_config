--MAPPING !!
local nnoremap = require("qjungo.keymap").nnoremap

vim.g.mapleader=" "
-- moving files
nnoremap("<leader>f", "<cmd>lua require'telescope.builtin'.find_files{}<CR>")
nnoremap("<leader>t", "<cmd>Explore<CR>")

-- norm
nnoremap("<leader>l", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")

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


-- nerdtree
nnoremap("<leader>n", "<cmd>NERDTreeToggle<CR>")

-- folding
-- nnoremap("<leader>v", "<cmd>lua createAndFold()<CR>")  -- fold all
-- nnoremap("<leader>V", "<cmd>normal! zR<CR>")  -- unfold all
-- nnoremap("<leader>O", "<cmd>normal! zO<CR>")  -- unfold recursively
-- nnoremap("<leader>o", "<cmd>normal! zo<CR>")  -- unfold
-- nnoremap("<leader>i", "<cmd>normal! zc<CR>")  -- fold
-- nnoremap("<leader>I", "<cmd>normal! zC<CR>")  -- fold recursively
-- TODO find a way to avoid the automatic fold
