
local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'tpope/vim-fugitive' -- Git command
    -- Add git related info in the signs columns and popups
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- Libs lua
    use({
        'nvim-lua/plenary.nvim',
        'nvim-lua/popup.nvim',
    })

    use 'mattn/emmet-vim'

    -- Golang
    use({
        'fatih/vim-go',
        run = ':GoUpdateBinaries'
    })

    -- Rust
    use 'rust-lang/rust.vim'
    
    -- SQL
    use 'nanotee/sqls.nvim'

    -- Treesitter
    use({
        'nvim-treesitter/nvim-treesitter',
        config = [[ require('modules.plugins.treesitter') ]],
        requires = {
            'nvim-treesitter/nvim-treesitter-textobjects'
        },
        run = ':TSUpdate',
    })

    -- Lsp
    use({
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
        'ray-x/lsp_signature.nvim',
        'jose-elias-alvarez/nvim-lsp-ts-utils',
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'neovim/nvim-lspconfig',
        },
    })

    -- Completion
    use({
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lua',
        'lukas-reineke/cmp-rg',
    })

    -- File explorer
    use({
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[ require('modules.plugins.nvimtree') ]],
    })

    -- Dev tools
    use({
        'editorconfig/editorconfig-vim',
        'tpope/vim-surround',
        'tpope/vim-commentary',
    })

    use 'windwp/nvim-autopairs'

    use({
        'norcalli/nvim-colorizer.lua',
        config = [[require('modules.plugins.colorizer')]],
    })

    -- Snippets
    use({
        'L3MON4D3/luasnip',
        requires = {
            'rafamadriz/friendly-snippets',
        },
    })

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' } }
    use 'nvim-telescope/telescope-fzf-native.nvim'
    use {'stevearc/aerial.nvim'}

    -- Theme
    use({
        'Mofiqul/dracula.nvim',
        'marko-cerovac/material.nvim',
        'kyazdani42/nvim-web-devicons',
    })

    -- Statusline
    use({
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-web-devicons',
        },
    })

    use 'arkav/lualine-lsp-progress' -- Integration with progress notifications

    -- i3 support
    use 'mboughaba/i3config.vim'
end)
