# xsource & zrclocal copied from grml-zsh-config:
# https://github.com/grml/grml-etc-core/blob/master/etc/zsh/zshrc

# Check if we can read given files and source those we can.
xsource() {
    if (( ${#argv} < 1 )) ; then
        printf 'usage: xsource FILE(s)...\n' >&2
        return 1
    fi

    while (( ${#argv} > 0 )) ; do
        [[ -r "$1" ]] && source "$1"
        shift
    done
    return 0
}

# this allows us to stay in sync with grml's zshrc and put own
# modifications in ~/.zshrc.local
zrclocal() {
    xsource "/etc/zsh/zshrc.local"
    xsource "${ZDOTDIR:-${HOME}}/.zshrc.local"
    return 0
}

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
bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# DONE
antigen apply

zrclocal
