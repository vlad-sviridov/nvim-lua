return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' --> packer plugin manager

    --> colorschemes
    use ("EdenEast/nightfox.nvim")
    use ('projekt0n/github-nvim-theme')

    --> lsp
    use ('neovim/nvim-lspconfig') --> collection of configurations for built-in LSP client
    use ('hrsh7th/nvim-cmp') --> autocompletion plugin
    use ('hrsh7th/cmp-nvim-lsp') --> lsp source for nvim-cmp
    use ('saadparwaiz1/cmp_luasnip') --> snippets source for nvim-cmp
    use ('L3MON4D3/LuaSnip') --> snippets plugin
    use ('onsails/lspkind.nvim') --> vscode-like pictograms for neovim lsp completion items
    use ('hrsh7th/vim-vsnip') --> this  plugin provides some plugins integration
    use ("williamboman/nvim-lsp-installer")
    use {
        "brymer-meneses/grammar-guard.nvim",
        requires = {
            "neovim/nvim-lspconfig",
            "williamboman/nvim-lsp-installer"
        }
    }
    --> treesitter
    use ({ 'nvim-treesitter/nvim-treesitter'})
    use ('nvim-treesitter/nvim-treesitter-refactor')
    use ('nvim-treesitter/playground')
    use ('nvim-treesitter/nvim-treesitter-textobjects')

    --> telescope
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
      })

    --> other plagin
    use ("kyazdani42/nvim-tree.lua") --> file explorer
    use ('kyazdani42/nvim-web-devicons') --> icons for file explorer

    use ('rcarriga/nvim-notify') --> notify manager
    use ('nvim-lualine/lualine.nvim') --> statusline
    use ('romgrk/barbar.nvim') --> tabs
    use ('sunjon/shade.nvim') --> plugin that dims your inactive windows
    use ("lukas-reineke/indent-blankline.nvim") --> lugin adds indentation guides to all lines (including empty lines)
    use ({
	    "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })
end)
