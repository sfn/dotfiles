# ---------------
# ~/.bashrc
# ---------------

# Prompt
export PS1="[\[\e[34m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]] \[\e[33m\]\W\[\e[m\]$ \[\033[0;32m\]"
trap "echo -n $'\e[0m'" DEBUG

# Alias
alias ls='ls -hG'
alias clr='clear'
alias cls='clear'
alias localip='php -r "echo gethostbyname(php_uname(\"n\")).\"\r\n\";"'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Funzioni
function myip () {
    if [ "$1" == 'public' ]
    then
        wanip
    else
        localip
    fi    
}
