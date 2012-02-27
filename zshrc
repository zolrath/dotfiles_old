# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# If you set this to "random", it'll load a random theme when oh-my-zsh is run.
ZSH_THEME="soliah"

# Aliases
# alias zshconfig="mate ~/.zshrc"
alias emacs="emacs -nw"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=( brew bundler extract furd gem git git-flow github heroku\
          lein osx rails3 ruby rvm vagrant)

# Set to this to use case-sensitive completion # CASE_SENSITIVE="true"
# Comment this out to disable weekly auto-update checks # DISABLE_AUTO_UPDATE="true"
# Uncomment following line if you want to disable colors in ls # DISABLE_LS_COLORS="true"
# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion # COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Set variables for Rails to use more memory but run more quickly
export EDITOR='vim'
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
# Load Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
# Set Path to include ClojureScript and RVM
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/Users/furd/Code/clojurescript/bin:$HOME/.rvm/bin
# Load secrets to keep sensitive information out of version control.
[[ -s "$HOME/.secrets" ]] && source "$HOME/.secrets"
rvm use default
