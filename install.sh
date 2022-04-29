#!/bin/sh

echo "Mistrie's dotfile: setting up a new mac ======"

# Install oh-my-zsh
if test ! $(which omz); then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Install homebrew
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Replace .zshrc
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Replace .gitconfig
rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# Update homebrew
brew update

# Install brewfile
brew tap homebrew/bundle
brew bundle --file $HOME/.dotfiles/Brewfile

brew cleanup

# Replace .vimrc
rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/colors
mv $HOME/.dotfiles/vim/colors/* $HOME/.vim/colors
