vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use {'wbthomason/packer.nvim'}		-- Pour pas qu'il se supprime
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0'}
	use {'neovim/nvim-lspconfig'}					--TODO : config more options
	use {'ThePrimeagen/vim-be-good'}					--TODO : config more options
	-- use {'nvim-lua/plenary.nvim'}
	--     use {
    --     'nvim-treesitter/nvim-treesitter',
    --     run = ':TSUpdate'
    -- }
	use {'ixru/nvim-markdown'}			-- pour le markdown
	use {'MunifTanjim/exrc.nvim'}		-- pour des vim rc dans tes projets
	use {'habamax/vim-godot'}
	use {'mbbill/undotree'}
	use {'42Paris/42header'}
	-- colorsheme
	use {'gruvbox-community/gruvbox'}
	use {'folke/tokyonight.nvim'}
	use {'savq/melange'}
	use {'sainnhe/sonokai'}
end)
