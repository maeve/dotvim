# Dotvim

This is my vim configuration. There are many like it, but this one is mine.

Tailored for Rails development using neovim on OS X.

## Installation

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

5. Use one of the [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) to get the
   powerline symbols:
    ```console
    brew tap caskroom/fonts
    brew cask install font-hack-nerd-font
    ```

   To see the full list of patched fonts available:
    ```console
    brew cask search nerd-font
    ```

Although not strictly necessary to use this vim config, I prefer to use neovim with
[iterm2](https://www.iterm2.com/).

1. Install iterm2:
    ```console
    brew cask install iterm2
    ```

2. Clone the [base16-iterm2](https://github.com/chriskempson/base16-iterm2)
   color presets:
    ```console
    git clone https://github.com/chriskempson/base16-iterm2.git ~/base16-iterm2
    ```

3. Set the colors in iterm2:
    1. Go to Preferences > Profiles > Colors
    2. Click on Color Presets > Import and import your theme
    3. Click on Load Presets and select your theme

4. Set the font in iterm2:
    1. Go to Preferences > Profiles > Text
    2. Click on Change Font and select the nerd-font you installed (e.g. hack)

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
* Ruby: [vim-ruby](https://github.com/vim-ruby/vim-ruby)
* Rails: [vim-rails](https://github.com/tpope/vim-rails)
* Color scheme: [base16-vim](https://github.com/chriskempson/base16-vim)
* Linting: [neomake](https://github.com/neomake/neomake)
* Terminal goodies: [neoterm](https://github.com/kassio/neoterm)
* Surroundings: [vim-surround](https://github.com/tpope/vim-surround)
* Auto-close programming constructs: [vim-endwise](https://github.com/tpope/vim/endwise)
* Auto-close paired punctuation: [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* Status line: [vim-airline](https://github.com/vim-airline/vim-airline) with [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* Display git diff in gutter: [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
