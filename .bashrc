export PS1="[\[\e[34m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]] \[\e[33m\]\W\[\e[m\]$ \[\033[0;32m\]"

trap "echo -n $'\e[0m'" DEBUG
