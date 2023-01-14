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


-- Default config (TODO improve ?)

local null_ls = require("null-ls")
local eslint = require("eslint")
local prettier = require("prettier")


null_ls.setup()
-- local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
-- local event = "BufWritePre" -- or "BufWritePost"
-- local async = event == "BufWritePost"
-- null_ls.setup({
--   on_attach = function(client, bufnr)
--     if client.supports_method("textDocument/formatting") then
--       vim.keymap.set("n", "<Leader>l", function()
--         vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
--       end, { buffer = bufnr, desc = "[lsp] format" })
-- 
--       -- format on save
--       vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
--       vim.api.nvim_create_autocmd(event, {
--         buffer = bufnr,
--         group = group,
--         callback = function()
--           vim.lsp.buf.format({ bufnr = bufnr, async = async })
--         end,
--         desc = "[lsp] format on save",
--       })
--     end
-- 
--     if client.supports_method("textDocument/rangeFormatting") then
--       vim.keymap.set("x", "<Leader>l", function()
--         vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
--       end, { buffer = bufnr, desc = "[lsp] format" })
--     end
--   end,
-- })

eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = true,
      types = { "directive", "problem", "suggestion", "layout" },
    },
    disable_rule_comment = {
      enable = true,
      location = "separate_line", -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
	"svelte",
  },
})
