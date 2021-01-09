# brew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# nvm
if [[ -s ~/.nvm/nvm.sh ]];
 then source ~/.nvm/nvm.sh
fi

# Rust
source $HOME/.cargo/env

#gvm (go version manager)
source ~/.gvm/scripts/gvm

#mySQL
export MYSQL_PS1='\u@\h[\d]> '

# npmbrew
export PATH=$HOME/.npmbrew/current/bin:$PATH

# aws account nonprod
# source ~/asurion_aws.sh

# GOlang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# for Appium
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH="${JAVA_HOME}/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# https://github.com/pyenv/pyenv/issues/1066#issuecomment-531510186
export SDKROOT=/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk

## direnv
eval "$(direnv hook bash)"

## alias
alias oa='open -a Atom'
alias gb='git branch'
alias gr='git rebase -i HEAD~~'
alias gu='git pull upstream develop --rebase'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias ga='git add -A'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gl='git log --oneline'
alias gtree='git log --graph --pretty="format:%C(yellow)%h%Creset %s %Cgreen(%an)%Creset %Cred%d%Creset"'
alias cdgit='cd /Users/naoko.nishimura/Documents/git/'
