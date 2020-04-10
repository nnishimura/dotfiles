NVM_DIR := $(HOME)/.nvm
ZSH_DIR := $(HOME)/.oh-my-zsh
ASDF_DIR := $(HOME)/.asdf

all: brew git npm yarn node-packages zsh

asdf:
	if ! [ -d $(ASDF_DIR)/.git ]; then git clone https://github.com/asdf-vm/asdf.git ~/.asdf $(ASDF_DIR); fi

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

yarn:
	if ! [ yarn > /dev/null ]; then brew install yarn; fi
