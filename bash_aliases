# Aliases/exports common to all machines

alias holdmybeer='sudo'

## FILE/FOLDER OPERATIONS

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias md='mkdir -p'

# suggest to use trash-cli instead of normal 'rm' command.
# Use \rm or 'rm' (with quotation marks) to circumvent this alias.
    
alias CP='rsync -ah --progress --stats'
alias RMTEMP='\rm -v *~ .*~'

alias NUMFILES='find . -type f | wc -l' # return number of files in current folder

alias FINDFILE='find $PWD -type f -name' # usage example: 'FINDFILE "file.txt"'


## APPLICATIONS

alias vi='vim'

## GENERAL LINUX

alias bashsource='source $HOME/.bashrc'
alias sudo='sudo ' # Enable aliases to be sudo'ed
alias q='exit'


# LATEX

alias latexmk='latexmk -pvc -pdf -outdir=output'

