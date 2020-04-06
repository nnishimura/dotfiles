# nvm
if [[ -s ~/.nvm/nvm.sh ]];
 then source ~/.nvm/nvm.sh
fi

# load bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#rbenv
echo 'eval "$(rbenv init -)"'
export PATH="$HOME/.cargo/bin:$PATH"

#mySQL
export MYSQL_PS1='\u@\h[\d]> '

# npmbrew
export PATH=$HOME/.npmbrew/current/bin:$PATH

# GOlang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

#python
PATH=$PATH:~/Library/Python/2.7/bin

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

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
alias cdgit='cd /Users/nnishimura/local-work/git'
