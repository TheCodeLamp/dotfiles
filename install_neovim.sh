#! /usr/bin/bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
stow neovim
nvim  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
