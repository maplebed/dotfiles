# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="benjunkfood"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git knife vagrant sublime)

# custom variables to override defaults in the knife plugin
KNIFE_CONF_PATH="$HOME/git/chef-repo/.chef/knife.rb"
KNIFE_COOKBOOK_PATH="$HOME/git/chef-repo/cookbooks/"

source $ZSH/oh-my-zsh.sh

# stuff I've added
export EDITOR=vim
setopt EXTENDED_HISTORY
setopt INTERACTIVE_COMMENTS
unalias history
alias history="history -f -d -D"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# turn on autocomplete for options for all gnu coreutils
for util in /usr/local/opt/coreutils/libexec/gnubin/*
do
  compdef _gnu_generic $util
done

