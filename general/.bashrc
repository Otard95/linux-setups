# # Custom Setup

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f /usr/share/git/completion/git-completion.bash ]] && . /usr/share/git/completion/git-completion.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PATH="$PATH:/home/otard/.npm/bin:/usr/bin"
export EDITOR="vim -u ~/.vimrc-simple"

xset r rate 160 45

. ~/scripts/cd_

DAY=$(date +%u)
FUCK_ALIAS='fuck'
[[ $DAY = '1' ]] && FUCK_ALIAS='FUCK'
alias fu=$FUCK_ALIAS
alias fk=$FUCK_ALIAS
alias fml=$FUCK_ALIAS
alias fak=$FUCK_ALIAS

eval "$(thefuck --alias $FUCK_ALIAS)"

# # Android react native

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
