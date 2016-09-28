# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# ensure dotfiles bin directory is loaded first                                  
export PATH="$HOME/.bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH"

# load custom executable functions
source ~/.zsh/functions/strip_diff_leading_symbols

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
