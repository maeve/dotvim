# Dotvim

This is my vim configuration. There are many like it, but this one is mine.

## Installation

For OS X.

### Prerequisites

1. Install [neovim](https://github.com/neovim/neovim):
    ```console
    brew install neovim/neovim/neovim
    ```
    
2. Open `nvim` and run `:CheckHealth`. Do whatever it tells you to do.
   (mostly installing the neovim plugin into your pythons and rubies)
3. Install [vim-plug](https://github.com/junegunn/vim-plug):
    ```console
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```
    
4. Install [ripgrep](https://github.com/BurntSushi/ripgrep):
    ```console
    brew install ripgrep
    ```
    
### Configuration

1. Clone this repo into your neovim config location:
    ```console
    git clone git@github.com:maeve/dotvim.git ~/.config/nvim
    ```
    
2. Open `nvim` and run `:PlugInstall`

## Plugins

* Fuzzy find: [fzf](https://github.com/junegunn/fzf) with [fzf.vim](https://github.com/junegunn/fzf.vim)
* File explorer: [netrw](http://www.vim.org/scripts/script.php?script_id=1075) with [vim-vinegar](https://github.com/tpope/vim-vinegar)
* Git: [vim-fugitive](https://github.com/tpope/vim-fugitive)
* Rails: [vim-rails](https://github.com/tpope/vim-rails)
* Color scheme: [vim-vividchalk](https://github.com/tpope/vim-vividchalk)
* Linting: [neomake](https://github.com/neomake/neomake)
* Terminal goodies: [neoterm](https://github.com/kassio/neoterm)
* Surroundings: [vim-surround](https://github.com/tpope/vim-surround)
* Auto-close programming constructs: [vim-endwise](https://github.com/tpope/vim/endwise)
* Auto-close paired punctuation: [auto-pairs](https://github.com/jiangmiao/auto-pairs)
