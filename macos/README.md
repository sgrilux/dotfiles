# dotfiles for OSX

## Install brew 
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install vim plugin manager

```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Install software from brew 
```shell
brew bundle
```

## oh-my-zsh
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Powerline9k
```shell
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

## Gopls...

This is needed by a nvim plugin

```shell
go install golang.org/x/tools/gopls@latest
```

## Nerd Fonts

```shell
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
```

## nvim configuration
```shell
mkdir -p ~/.config/nvim
cp ./.config/nvim/* ~/.config/nvim/
```

Now open nvmim and run `:Pluginstall` to install all plugins

## References

- NERDTree: https://github.com/preservim/nerdtree

