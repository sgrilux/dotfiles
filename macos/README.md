# dotfiles for OSX

## Install brew 
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install vim plugin manager

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Install software from brew 
```bash
brew bundle
```

## nvim providers
```bash
python3 -m pip install --user --upgrade pynvim
npm install -g neovim
gem install neovim
```

## oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Powerline9k
```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

## Zsh Plugins
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/Source/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/Source/zsh-autosuggestions
```

## Gopls...
This is needed by a nvim plugin

```bash
go install golang.org/x/tools/gopls@latest
```

## Nerd Fonts

```bash
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
```

## For newovim

```bash
pip3 install -U grip
python3 -m pip install --user --upgrade pynvim
```

## nvim configuration
```bash
cp -r ./.config/nvim ~/.config/
```

## Enabling the Python 3 Provider
```bash
pip3 install --user --upgrade neovim
```

## Installing neovim-remote
```bash
pip3 install --user --upgrade neovim-remote
``

To install plugins in vim run `:PlugInstall`.

## References

- NERDTree: https://github.com/preservim/nerdtree
