#!/bin/bash
# Assumes dotfiles dir is located at ~/.dotfiles

#echo "Creating ~/bin"
#mkdir -p ~/bin

echo "Creating symbolic links for config files"
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash_prompt ~/.bash_prompt
ln -s ~/.dotfiles/aliases ~/.aliases
ln -s ~/.dotfiles/osx ~/.osx
ln -s ~/.dotfiles/brew ~/.brew
ln -s ~/.dotfiles/gitattributes ~/.gitattributes
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/exports ~/.exports
ln -s ~/.dotfiles/functions ~/.functions
ln -s ~/.dotfiles/curlrc ~/.curlrc
ln -s ~/.dotfiles/hgignore ~/.hgignore
ln -s ~/.dotfiles/inputrc ~/.inputrc
ln -s ~/.dotfiles/wgetrc ~/.wgetrc

echo "Installing Key Bindings"
mkdir -p ~/Library/KeyBindings
cp ~/.dotfiles/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict

#echo "Installing useful brews:"
# brew brew install ack git hub tig tmux tree xmlformat
# brew install aspell --lang=uk
