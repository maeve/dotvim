# Dotvim

This is my (neo)vim configuration. There are many like it, but this one is mine.

Primarily for Rails development.

## Installation

For OS X using [homebrew](https://brew.sh/).

### Prerequisites

1. Install [neovim](https://github.com/neovim/neovim):

    ```bash
    brew install neovim/neovim/neovim
    ```

1. Open `nvim` and run `:CheckHealth`. Do whatever it tells you to do.
   (mostly installing the neovim plugin into your pythons and rubies)

1. Install [vim-plug](https://github.com/junegunn/vim-plug):

    ```bash
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

1. Install [ripgrep](https://github.com/BurntSushi/ripgrep):

    ```bash
    brew install ripgrep
    ```

1. Install [rust](https://rust-lang.org):

    ```bash
    brew install rust
    ```

1. Install [iterm2](https://www.iterm2.com):

    ```bash
    brew cask install iterm2
    ```

1. Install [highlight](http://www.andre-simon.de/doku/highlight/en/highlight.php):

    ```bash
    brew install highlight
    ```

### Fonts

1. Use one of the [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) to get the
   powerline symbols:

    ```bash
    brew tap caskroom/fonts
    brew cask install font-hack-nerd-font
    ```

   To see the full list of patched fonts available:

    ```bash
    brew cask search nerd-font
    ```

1. Set the font in iterm2:
  1. Go to Preferences > Profiles > Text
  1. Click on Change Font and select the nerd-font you installed (e.g. hack)

### Colors

1. Clone the [base16-iterm2](https://github.com/chriskempson/base16-iterm2)
   color presets and [base16-shell](https://github.com/chriskempson/base16-shell) for
   256 color support:

    ```bash
    git clone https://github.com/chriskempson/base16-iterm2.git ~/.config/base16-iterm2
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    ```

1. Set the colors in iterm2:
  1. Go to Preferences > Profiles > Colors
  1. Click on Color Presets > Import and import your theme
  1. Click on Load Presets and select your theme

1. To enable base16 color schemes in the 256 colorspace, add the following to your
  `.bashrc`:

  ```bash
  BASE16_SHELL=$HOME/.config/base16-shell/
  [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
  ```

  then start a new shell and run the script for your chosen scheme, for example:

  ```bash
  base16_tomorrow-night
  ```

### Vim Configuration

1. Clone this repo into your neovim config location:

    ```bash
    git clone git@github.com:maeve/dotvim.git ~/.config/nvim
    ```

1. Open `nvim` and run `:PlugInstall`

## Plugins

* Fuzzy find: [fzf](https://github.com/junegunn/fzf) with [fzf.vim](https://github.com/junegunn/fzf.vim)
* File explorer: [netrw](http://www.vim.org/scripts/script.php?script_id=1075) with [vim-vinegar](https://github.com/tpope/vim-vinegar)
* Git: [vim-fugitive](https://github.com/tpope/vim-fugitive)
* Rails: [vim-rails](https://github.com/tpope/vim-rails)
* Color schemes: [base16-vim](https://github.com/chriskempson/base16-vim)
* Linting: [neomake](https://github.com/neomake/neomake)
* Terminal goodies: [neoterm](https://github.com/kassio/neoterm)
* Surroundings (quotes, parens, and more): [vim-surround](https://github.com/tpope/vim-surround)
* Auto-close programming constructs: [vim-endwise](https://github.com/tpope/vim/endwise)
* Auto-close paired punctuation: [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* Status line: [vim-airline](https://github.com/vim-airline/vim-airline) with [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* Display git diff in gutter: [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* Live markdown preview: [vim-markdown-composer](https://github.com/euclio/vim-markdown-composer)
* Coffeescript: [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* Test support: [vim-test](https://github.com/janko-m/vim-test)
* Liquid support: [vim-liquid](https://github.com/tpope/vim-liquid)
* Vertically align code: [vim-easy-align](https://github.com/junegunn/vim-easy-align)
* Buffer management: [bufexplorer](https://github.com/jlanzarotta/bufexplorer)
* Killring/yank history: [nvim-miniyank](https://github.com/bfredl/nvim-miniyank)
