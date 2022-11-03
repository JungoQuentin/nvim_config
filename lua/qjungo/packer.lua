vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0'}
	use {'neovim/nvim-lspconfig'}					--TODO : config more options
	use {'ThePrimeagen/vim-be-good'}					--TODO : config more options
	use {'nvim-lua/plenary.nvim'}
	    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	
	use {'MunifTanjim/exrc.nvim'}
	use {'habamax/vim-godot'}
	use {'mbbill/undotree'}
	use {'42Paris/42header'}
	-- colorsheme
	use {'gruvbox-community/gruvbox'}
	use {'folke/tokyonight.nvim'}
end)
