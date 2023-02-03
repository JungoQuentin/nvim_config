vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use {'wbthomason/packer.nvim'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}
	use {"nvim-lua/plenary.nvim"} -- required by telescope
	use {'ixru/nvim-markdown'}			-- pour le markdown
	use {'MunifTanjim/exrc.nvim'}		-- pour des vim rc dans tes projets
	use {'neovim/nvim-lspconfig'}					--TODO : config more options
	use {'nvim-treesitter/nvim-treesitter'}
	use {'habamax/vim-godot'}
	use {'mbbill/undotree'}
	use {'42Paris/42header'}

	use {'ThePrimeagen/vim-be-good'}					--TODO : config more options

	-- For JS project
	use {'jose-elias-alvarez/null-ls.nvim'}
	use {'MunifTanjim/eslint.nvim'}
	use {'MunifTanjim/prettier.nvim'}
	use {'evanleck/vim-svelte'} -- for svelte

	-- colorsheme
	use {'gruvbox-community/gruvbox'}
	use {'folke/tokyonight.nvim'}
	use {'savq/melange'}
	use {'sainnhe/sonokai'}
end)
