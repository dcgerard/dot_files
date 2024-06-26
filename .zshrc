## ls colors
PS1="%{%F{033}%}%n%{%f%}@%{%F{green}%}%m:%{%F{yellow}%}%~%{$%f%}%  "
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

## less colors
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -F '


## Git Autocomplete
autoload -Uz compinit && compinit

## Ruby Stuff
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version

## Emacs as default editor, -nw stays in terminal
export EDITOR="emacs -nw"
