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

2. Open `nvim` and run `:CheckHealth`. Do whatever it tells you to do.
   (mostly installing the neovim plugin into your pythons and rubies)

3. Install [vim-plug](https://github.com/junegunn/vim-plug):

    ```bash
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

4. Install [ripgrep](https://github.com/BurntSushi/ripgrep):

    ```bash
    brew install ripgrep
    ```

5. Install [rust](https://rust-lang.org):

    ```bash
    brew install rust
    ```

6. Use one of the [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) to get the
   powerline symbols:

    ```bash
    brew tap caskroom/fonts
    brew cask install font-hack-nerd-font
    ```

   To see the full list of patched fonts available:

    ```bash
    brew cask search nerd-font
    ```

7. Install [iterm2](https://www.iterm2.com):

    ```bash
    brew cask install iterm2
    ```

8. Clone the [base16-iterm2](https://github.com/chriskempson/base16-iterm2)
   color presets:

    ```bash
    git clone https://github.com/chriskempson/base16-iterm2.git ~/base16-iterm2
    ```

9. Set the colors in iterm2:
  1. Go to Preferences > Profiles > Colors
  2. Click on Color Presets > Import and import your theme
  3. Click on Load Presets and select your theme

10. Set the font in iterm2:
  1. Go to Preferences > Profiles > Text
  2. Click on Change Font and select the nerd-font you installed (e.g. hack)
  3. Uncheck the option to "Draw bold text in bright colors"

### Configuration

1. Clone this repo into your neovim config location:

    ```bash
    git clone git@github.com:maeve/dotvim.git ~/.config/nvim
    ```

2. Open `nvim` and run `:PlugInstall`

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
