# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

ZSH_THEME="avbranco"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/avbranco/.rvm/gems/ruby-1.9.2-p290/bin:/Users/avbranco/.rvm/gems/ruby-1.9.2-p290@global/bin:/Users/avbranco/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/avbranco/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/avbranco/bin
. ~/github_token
. ~/work/dotfiles/zsh/env
. ~/work/dotfiles/zsh/config
. ~/work/dotfiles/zsh/aliases
. ~/work/replaygaming/replaypoker/ec2/env

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/sbin
