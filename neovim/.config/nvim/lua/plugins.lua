local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup(function(use)
    -- My plugins here
    use 'wbthomason/packer.nvim'            -- Vim package manager.
    use 'dracula/vim'                       -- Dracula theme.
    use {                                   -- Language server config
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
    use 'jiangmiao/auto-pairs'              -- Adds closing parenthasis.
    use 'airblade/vim-gitgutter'            -- Display git changes near the bottom.
    use 'tpope/vim-fugitive'                -- Git wraper.
    use {
        'kyazdani42/nvim-tree.lua',         -- Vim file manager.
        requires = {
          'kyazdani42/nvim-web-devicons',   -- Icons.
        },
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
