# Path to your oh-my-zsh installation.
export ZSH=/Users/ben/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="benjunkfood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux terraform colored-man-pages golang)

# User configuration

# autostart tmux
#ZSH_TMUX_AUTOSTART=true

export PATH="$HOME/hound/goroot/bin:/usr/local/terraform/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/terraform/bin:/usr/local/opt/go/libexec/bin:/Users/ben/git/phacility/arcanist/bin"
export GOPATH="$HOME/hound/goroot"
export HOUND_ROOT="$GOPATH/src/github.com/houndsh/hound"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=vim



# stuff I've added
export EDITOR=vim
setopt EXTENDED_HISTORY
setopt INTERACTIVE_COMMENTS
unalias history
alias history="history -f -d -D"

# turn on autocomplete for options for all gnu coreutils
for util in /usr/local/opt/coreutils/libexec/gnubin/*
do
  compdef _gnu_generic $util
done

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl='reattach-to-user-namespace subl'

# load zsh syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=cyan
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan

if [ -e ~/.alias ]; then
  source ~/.alias
fi

alias go='nocorrect go'
# make godoc called with no arguments launch the local godoc server
# (if necessary) and then open the godoc web page.
# godoc called with arguments should pass them through to normal godoc.
godoc() {
  if ! [[ -z "$1" ]] ; then
    # there are arguments - call normal godoc
    /usr/local/bin/godoc "$@"
    return
  fi
  # no arguments; let's start a server and open the packages page
  if ! pgrep godoc ; then
    /usr/local/bin/godoc -http=:6070 &
  fi > /dev/null 2>&1
  echo -n "waiting... "
  sleep 1
  open http://localhost:6070/pkg/github.com/houndsh/
  echo "done"
}

# hound stuff
export INFRA_PATH=$HOME/hound/infra
export ENV=development
