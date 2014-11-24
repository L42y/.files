source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen theme wedisagree

antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# DONE
antigen apply

# PATH
export PATH=$HOME/.pyenv/shims:$PATH

# Editor
export EDITOR=emacsclient

# Docker
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/L42y/.boot2docker/certs/boot2docker-vm

# Python
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
