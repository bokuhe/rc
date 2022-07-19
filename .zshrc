# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
  
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
  
# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"
  
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
  
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
  
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
  
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
  
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
  
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"
  
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
  
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
  
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
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
  
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
  
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  
  
#============================================================
#
#  ALIASES AND FUNCTIONS
#  Arguably, some functions defined here are quite big.
#  If you want to make this file smaller, these functions can
#+ be converted into scripts and removed from here.
#
#============================================================
  
#---------------
# Color Settings
#---------------
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
  
#-------------------
# Personnal Aliases
#-------------------
  
#alias rm='rm -i'
alias rm='rmtrash'
alias cp='cp -i'
alias mv='mv -i'
alias cl='clear'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
  
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
  
# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
  
  
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
  
#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -hG'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
  
# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -alv"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
  
  
#-------------------------------------------------------------
# Tailoring 'less'
#-------------------------------------------------------------
  
alias more='less'
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
                # Use this if lesspipe.sh exists.
export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'
  
# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
  
#-------------------------------------------------------------
# Using in MAC
#-------------------------------------------------------------
alias desk='cd ~/Desktop'
alias cl='clear'
alias cls='clear'
  
#-------------------------------------------------------------
# GREP Options
#-------------------------------------------------------------
#export GREP_OPTIONS='--color=always'
#export GREP_COLOR='1;35;40'
  
#-------------------------------------------------------------
# JAVA
#-------------------------------------------------------------
export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH="${PATH}:$JAVA_HOME/bin"
  
#-------------------------------------------------------------
# ANDROID
#-------------------------------------------------------------
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin
alias asopen='open -a "Android Studio.app"'
alias asopen-preview='open -a "Android Studio Preview.app"'
  
#-------------------------------------------------------------
# NODE JS
#-------------------------------------------------------------
export PATH="/usr/local/opt/node@16/bin:$PATH"
  
#-------------------------------------------------------------
# FLUTTER
#-------------------------------------------------------------
#export PATH="/Users/$USER/flutter/bin:$PATH"
  
#-------------------------------------------------------------
# NVM
#-------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  
#-------------------------------------------------------------
# React Native
#-------------------------------------------------------------
alias rn-start='npx react-native start'
alias rn-android='npx react-native run-android'
alias rn-ios='npx react-native run-ios'
alias rn-init='npx react-native init --template react-native-template-typescript@6.10.3'
alias rn-pod='cd ios && pod install && cd ..'
alias rn-gradle='cd android && sh gradlew build && cd ..'
alias rn-mac='npx react-native run-macos'
alias rn-install='npm i && rn-pod && rn-gradle'

alias rn-config='/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/bokuhe/rc/main/rn/rn-conf.sh)"'
 
# RN Desktop
alias rn-init-macos='npx react-native-macos-init'
alias rn-macos='npx react-native run-macos'
alias rn-init-windows='npx react-native-windows-init'
alias rn-windows='npx react-native run-windows'
  
#-------------------------------------------------------------
# React
#-------------------------------------------------------------
alias react-init='npx create-react-app --template typescript'

#-------------------------------------------------------------
# Python
#-------------------------------------------------------------
alias pyhttp='python3 -m http.server'

#-------------------------------------------------------------
# UPDATE RC
#-------------------------------------------------------------
alias update-zshrc='curl -o $HOME/.zshrc https://raw.githubusercontent.com/bokuhe/rc/main/.zshrc && source ~/.zshrc'
alias update-vimrc='(
mkdir -p $HOME/.vim/colors
curl -o $HOME/.vim/colors/codedark.vim https://raw.githubusercontent.com/bokuhe/vim-code-dark/master/colors/codedark.vim
curl -o $HOME/.vimrc https://raw.githubusercontent.com/bokuhe/rc/main/.vimrc
)'

#-------------------------------------------------------------
# MISC
#-------------------------------------------------------------

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
  
# BREW
export PATH="/opt/homebrew/bin:$PATH"
