
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag='0.1.6',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	use({ 'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end })
use('duane9/nvim-rg')
--use{'nvim-treesitter/nvim-treesitter', 
--    run = function()
--        local ts_update = require('nvim-treesitter.instal').update({ with_sunc = true})
--        ts_update()
--    end,}
use('theprimeagen/harpoon')
use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}
use({
  "seblyng/roslyn.nvim",
  config = function()
    require("roslyn").setup({
        filewatching = "auto",
        broad_search = false,
    })
  end,
})
--LSP IMPORTAAAANT

use { "hrsh7th/nvim-cmp" }
use { "hrsh7th/cmp-nvim-lsp" }
use { "hrsh7th/cmp-buffer" }
use { "hrsh7th/cmp-path" }
use { "L3MON4D3/LuaSnip" }
use {"mason-org/mason.nvim"}
end)

