#!/bin/bash

function f_zsh_main() {
    f_check_prog "git"

    f_out "Installing and setting up Zsh"

    sudo dnf install -y zsh zsh-syntax-highlighting fzf
    git clone https://github.com/momo-lab/zsh-abbrev-alias ~/.config/zsh-abbrev-alias/ || true
    git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh || true
    cp ~/.dotfiles/zsh/zshrc-linux-p10k ~/.zshrc
    cp ~/.dotfiles/p10k/.p10k.zsh ~/
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.oh-my-zsh/themes/powerlevel10k
    sudo chsh -s $(which zsh) ${SCRIPT_RUN_USER}
}
