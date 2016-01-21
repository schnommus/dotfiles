# If not running interactively, don't do anything
[[ $- != *i* ]] && return

MONADLINE_DIR=~/.monadline

set_monadline_prompt(){
    PS1="$($MONADLINE_DIR/dist/build/monadline/monadline $? $(jobs -p|wc -l)) "
}

PROMPT_COMMAND=set_monadline_prompt

export VISUAL="vim"

alias ls='ls --color=auto'
alias vi='vim'
alias s='pwd > ~/.last_dir'
alias r='cd $(cat ~/.last_dir)'
alias clip='xclip -selection c'
