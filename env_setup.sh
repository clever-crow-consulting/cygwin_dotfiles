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

chmod 600 ~/.ssh/github_rsa
chmod 600 ~/.ssh/ddye_rackspace

eval `ssh-agent -s`
ssh-add ~/.ssh/github_rsa
ssh-add ~/.ssh/ddye_rackspace

git config --global user.name 'Dan Dye'
git config --global user.email ddye@soltra.com

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

