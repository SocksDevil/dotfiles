# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="~/.oh-my-zsh"
  export ZPLUG_HOME=~/.zplug

  source $ZPLUG_HOME/init.zsh

 zplug clear
#################################################################################
# Packages
#
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug mafredri/zsh-async, from:github
##########################################
# Theme
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"

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
plugins=(
  git
#  svn
)

# prompt_svn() {
#    local rev branch
#    if in_svn; then
#        rev=$(svn_get_rev_nr)
#        branch=$(svn_get_branch_name)
#        if [ `svn_dirty_choose_pwd 1 0` -eq 1 ]; then
#            prompt_segment yellow black
#            echo -n "$rev@$branch"
#            echo -n "±"
#        else
#            prompt_segment green black
#            echo -n "$rev@$branch"
#        fi
#    fi
#}

# build_prompt() {
#    RETVAL=$?
#    prompt_status
#    prompt_context
#    prompt_dir
#    prompt_git
#    prompt_svn
#    prompt_end
#}

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
#
#
###########################################################
# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load


#alias lcom="ssh lcom@127.0.0.1 -p 2222"
#alias lcom2="ssh lcom@127.0.0.1 -p 2223"
#alias android-studio="sh ~/Downloads/android-studio/bin/studio.sh"
# alias pip ="python ~/.local/bin"
cs() { cd "$1" && ls; }
alias gtree="git fetch && git log --graph --abbrev-commit --decorate --format=format:'%C(bold
blue)%h%C(reset) - %C(bold
cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)-
%an%C(reset)' --all" -g
#powerline-daemon -q
export PATH="$PATH:~/Flutter/flutter/bin"
export PATH="$PATH:/root/.gem/ruby/2.6.0/bin"
export PATH="$PATH:~/.local/bin"
#. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
export VISUAL=vim
export EDITOR="$VISUAL"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export XDG_CURRENT_DESKTOP=GNOME
alias sicstus="wine ~/.wine/drive_c/Program\ Files/SICStus\ Prolog\ VC15\ 4.5.1/bin/sicstus-4.5.1.exe"
alias rcom="ssh -p 3022 andrefmrocha@127.0.0.1"
alias rcom2="ssh -p 3023 andrefmrocha@127.0.0.1"
alias bazel="~/Projects/bazel/bazel-bin/src/bazel"
alias otioconvert="~/.local/bin/otioconvert"
eval $(thefuck --alias)
