source ~/bn/env.sh
source ~/bn/alias.sh
source ~/bn/fns.sh

export PS1='%d$ '
export HISTFILE="/home/sk/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt appendhistory
setopt hist_save_no_dups
eval $(lessfile)
