#!/bin/bash

if [[ -d ~/.ssh ]]; then
    mv ~/.ssh ~/.ssh_default
fi
mv ~/.bash_profile ~/.bash_profile_default
mv ~/.vimrc ~/.vimrc_default
mv ~/.vim ~/.vim_default

ln -s ~/cygwin_dotfiles/.ssh ~/.ssh
ln -s ~/cygwin_dotfiles/.bash_profile ~/.bash_profile  
ln -s ~/cygwin_dotfiles/.vimrc ~/.vimrc
ln -s ~/cygwin_dotfiles/.vim ~/.vim
ln -s ~/cygwin_dotfiles/.gitconfig ~/.gitconfig


git config --global user.name 'Dan Dye'
git config --global user.email ddye@soltra.com

git clone https://github.com/clever-crow-consulting/Vundle.vim.git ~/.vim/bundle/Vundle.vim

