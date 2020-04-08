NVM_DIR := $(HOME)/.nvm
ZSH_DIR := $(HOME)/.oh-my-zsh

all: brew git npm node-packages zsh

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby

git: brew
	brew install git git-extras

npm:
	if ! [ -d $(NVM_DIR)/.git ]; then git clone https://github.com/creationix/nvm.git $(NVM_DIR); fi
	. $(NVM_DIR)/nvm.sh; nvm install --lts

node-packages: npm
	. $(NVM_DIR)/nvm.sh; npm install -g $(shell cat install/npmfile)

zsh:
	if ! [ -d $(ZSH_DIR)/.git ]; then https://github.com/robbyrussell/oh-my-zsh.git $(ZSH); fi
