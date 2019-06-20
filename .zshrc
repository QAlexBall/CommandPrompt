# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/derenzhu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/Users/derenzhu/Downloads:$PATH"
export PATH="/user/local/bin:$PATH"
export NVM_DIR="/Users/derenzhu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/ruby/bin:$PATH"

# python config
alias python3"/usr/local/Cellar/python/3.7.3/Frameworks/Python.framework/Versions/3.7/bin/python3"
alias pip="/usr/local/Cellar/python/3.7.3/bin/pip3"

# my_script
export PATH="/Users/derenzhu/Script/bin:$PATH"
alias simg=simg.sh

# golang
export GOPATH=/Users/derenzhu/go-workspace # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


# proxy config
/usr/local/sbin/privoxy /usr/local/etc/privoxy/config

function off_proxy(){
    unset http_proxy
    unset https_proxy
    echo -e "===== proxy off ====="
}

function open_proxy() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy=$http_proxy
    echo -e "===== proxy on ===="
}

# gcc version
function use_gun() {
  alias gcc="/usr/local/Cellar/gcc/9.1.0/bin/gcc-9"
  alias g++="/usr/local/Cellar/gcc/9.1.0/bin/g++-9"
  echo -e "=== now use gun ==="
}

function use_clang() {
  unalias gcc
  unalias g++
}

# android
export PATH="/Users/derenzhu/Library/Android/sdk/platform-tools/:$PATH"

# opencv
export OpenCV_DIR=~/Github/Other/installation/OpenCV-4.1.0/lib/cmake/opencv4

# change git user
function change_to_chris() {
  git config --global --replace-all user.name "chriszhu"
  git config --global --replace-all user.email "chriszhu@motherapp.com"
}

function change_to_alex() {
  git config --global --replace-all user.name "qalexball"
  git config --global --replace-all user.email "zhuderen12345@icloud.com"
}

# back up
cp ~/.zshrc ~/Github/CommandPrompt/

# ssh connect 
function connect_to_chriszhu {
  ssh chriszhu@192.168.13.32
}

function connect_to_chris {
  ssh chris@119.23.33.220
}

# mtr
PATH="/usr/local/Cellar/mtr/0.92/sbin:$PATH"
