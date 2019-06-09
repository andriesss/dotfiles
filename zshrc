# completion
autoload -Uz compinit
compinit

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# ensure dotfiles bin directory is loaded first                                  
export PATH="$HOME/.bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH"

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

# Include local zsh config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Include aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Include aliases
[[ -f ~/.aliases ]] && source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/andries/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

plugins=(
  git
  node
  npm
  sudo
  fzf
)

source $ZSH/oh-my-zsh.sh

