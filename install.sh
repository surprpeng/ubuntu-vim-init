#!/bin/bash
#set -e
echo 'start to install'

# install git, curl
sudo apt-get install git
sudo apt-get install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt install clang-11 clang-tools-11 clang-11-doc libclang-common-11-dev \
   libclang-11-dev libclang1-11 clang-format-11 clangd-11 clang-tidy-11 \
   libc++-11-dev libc++abi-11-dev
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100
sudo apt-get install nodejs


cp ./.vimrc ~/.vimrc
