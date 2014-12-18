# Editor
export EDITOR=emacsclient

# LANG
export LANG=en_US.UTF-8

# Docker
if which boot2docker > /dev/null; then eval "$(boot2docker shellinit -)"; fi

# Python
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

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
