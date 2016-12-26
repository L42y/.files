# speed up npm native code installing
export JOBS=max

# Editor
export EDITOR=emacsclient

# LANG
export LANG=en_US.UTF-8

# DICTIONARY
export DICPATH=$DICPATH:$HOME/Library/Spelling

# Python
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
if which pyenv > /dev/null; then
    eval "$(pyenv init -)";
    pyenv virtualenvwrapper_lazy
fi

# node.js
export PATH=$HOME/.ndenv/bin:$PATH
if which ndenv > /dev/null; then
    eval "$(ndenv init -)"
fi

# Ruby
if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
    export PATH="$HOME/.rbenv/bin:$PATH"
fi

# Go
export GOPATH=$HOME/Code/Go
export PATH=$GOPATH/bin:$PATH

# Erlang
export PATH=$HOME/.erlenv/bin:$PATH
if which erlenv > /dev/null; then
    eval "$(erlenv init -)"
fi
