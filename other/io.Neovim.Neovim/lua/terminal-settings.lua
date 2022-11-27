local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
	return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'shaunsingh/oxocarbon.nvim', run = './install.sh'}
    use 'nvim-lualine/lualine.nvim'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
    use 'simnalamburt/vim-mundo'
    use 'echasnovski/mini.comment'
    use 'echasnovski/mini.cursorword'
    use 'echasnovski/mini.pairs'
    use 'echasnovski/mini.surround'
    use 'gpanders/editorconfig.nvim'
    use 'fidian/hexmode'
    use 'ggandor/leap.nvim'
    use 'tpope/vim-repeat'
    use 'Olical/conjure'
  	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
    require("config.nvim.config")
    require("config.nvim.line")
    require("config.treesitter.treesitter")
    require("config.masonry.mason")
    require("config.lsp.lsp")
    require("keybindings.terminal")
    require("config.misc.mini")
    require("config.leap.leap")
end)


