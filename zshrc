# ---------------------------------------------------------
# Oh-My-ZSH Configuration
# ---------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Theme from ~/.oh-my-zsh/themes/
ZSH_THEME="furd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew bundler furd gem git-flow heroku lein rails3 rbenv ruby vagrant)

# Set to this to use case-sensitive completion # CASE_SENSITIVE="true"
# Comment this out to disable weekly auto-update checks # DISABLE_AUTO_UPDATE="true"
# Uncomment following line if you want to disable colors in ls # DISABLE_LS_COLORS="true"
# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion # COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

# ---------------------------------------------------------
# Customizations
# ---------------------------------------------------------

# ----------------------------------------
# Miscellaneous
# ----------------------------------------
export EDITOR='vim'

# ----------------------------------------
# Aliases
# ----------------------------------------
alias emacs="emacs -nw"

# ----------------------------------------
# Ruby Related
# ----------------------------------------
# Set variables for Rails to use more memory but run more quickly
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# ----------------------------------------
# Git Related
# ----------------------------------------
# Aliases for git-smart plugin (https://github.com/geelen/git-smart)
alias gup="git smart-pull"
alias gm="git smart-merge"
alias gl="git smart-log"

# ----------------------------------------
# Tmux Related
# ----------------------------------------
# Load Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
# Function to let me set tmux title.
settitle() {
  printf "\033k$1\033\\" }
# Set tmux title to hostname when using SSH.
ssh() {
  settitle "$*"
  command ssh "$@" }

# ----------------------------------------
# Path Related
# ----------------------------------------
# Set Path to include rbenv and ClojureScript.
export PATH=$HOME/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/Users/furd/Code/clojurescript/bin
# Load secrets to keep sensitive information out of version control.
[[ -s "$HOME/.secrets" ]] && source "$HOME/.secrets"
# Initialize rbenv.
eval "$(rbenv init -)"
