# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler gem git heroku history osx pod powder rails rake rbenv 
ruby ssh-agent xcode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all


source $HOME/.aliases

export GIT_EDITOR='vim'
export VISUAL='vim'
export EDITOR='vim'

export GIT_MERGE_AUTOEDIT='no'

setopt auto_cd
cdpath=($HOME/Code $HOME)

# Customize to your needs...
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:/usr/local/bin:/Users/mwhuss/bin:$PATH

fpath=(/usr/local/share/zsh-completions $fpath)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source $HOME/bin/logo.sh

