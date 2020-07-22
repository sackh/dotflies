# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kharude/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kharude/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kharude/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kharude/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/bin:$PATH"

alias c=clear
alias ll="ls -lrth"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Some modifications in command prompt
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

