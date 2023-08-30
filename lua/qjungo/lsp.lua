local lspconfig = require('lspconfig')

lspconfig.gdscript.setup{}

require'lspconfig'.clangd.setup{
	settings = {
		filetypes = { "objc", "objcpp", "cuda", "proto", "tpp" },
	},
 }

require'lspconfig'.jsonls.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.cmake.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.rust_analyzer.setup{}
