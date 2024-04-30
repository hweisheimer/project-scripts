# ~/.bashrc: executed by bash(1) for non-login shells.

# Colorize ls output
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

alias gs="git status"
alias gds="git diff --staged"

export AWS_DEFAULT_REGION=us-east-2
complete -C '/usr/local/bin/aws_completer' aws

