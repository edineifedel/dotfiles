# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/flanders/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="neigroove"
# Other cool themes
#clean
#candy
#3den

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git 
        zsh-autosuggestions 
        zsh-syntax-highlighting 
        mvn 
        git-prompt 
    )

source $ZSH/oh-my-zsh.sh

# Bindkeys
bindkey '^ ' autosuggest-accept # change default key autosuggest (ctrl+space)

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

PATH=$PATH:~/scripts

# alias diversos
# alias ws="cd /opt/workspace"
# alias idea="/opt/idea/idea-IU-182.3684.101/bin/idea.sh"
# alias diversos

# maven
alias mvn="mvn-color" # mvn-color is a function from plugin mvn ohmyzsh
# maven

# git
# alias gp="git pull" #override git push from plugin
# alias ggpush='git push origin HEAD:refs/for/"$(git_current_branch)"' #override git push to push for gerrit
alias gsta='git stash save'
alias gg='gitg'

function ghard() {
    if [ $# -eq 0 ]; then commits=1; else commits=$1; fi
    git reset --hard HEAD~$commits
}

function gsoft() {
    if [ $# -eq 0 ]; then commits=1; else commits=$1; fi
    git reset --soft HEAD~$commits
}
# git
