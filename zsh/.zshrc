# Editor
export EDITOR=emacsclient

# LANG
export LANG=en_US.UTF-8

# Docker
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/L42y/.boot2docker/certs/boot2docker-vm

# Python
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

# antigen
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen theme wedisagree

antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-history-substring-search
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# DONE
antigen apply
