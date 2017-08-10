# ----------------
# ~/.bashrc
# ----------------

# Prompt
export PS1="[\[\e[34m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]] \[\e[33m\]\W\[\e[m\]$ \[\033[0;32m\]"
trap "echo -n $'\e[0m'" DEBUG

# Alias
alias cd..='cd ..'
alias ls='ls -hG'
alias ll='ls -l'
alias clr='clear'
alias cls='clear'
alias localip='php -r "echo gethostbyname(php_uname(\"n\")).\"\r\n\";"'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# cd nella certella aperta in finder
alias cdf='cd `osascript -e "tell application \"Finder\" to if window 1 exists then if target of window 1 as string is not \":\" then get POSIX path of (target of window 1 as alias)"`'


# Funzioni
function myip () {
    if [ "$1" == 'public' ]
    then
        wanip
    else
        localip
    fi    
}
