######################################################################
#    Last changes.
#	 2. Sep. 2018.
######################################################################

# Includes.
if [ "$(uname)" == 'Darwin' ]; then
	# OS='Mac'
	source ~/.dotfiles/bash/_bashrc_mac
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
	# OS='Linux'
	source ~/.dotfiles/bash/_bashrc_linux
else
	echo "Your platform ($(uname -a)) is not supported."
	exit 1
fi


# Global Parametas.

#--------------------------------------------------------------------
# How user name show.
### Black       0;30     Dark Gray     1;30
### Blue        0;34     Light Blue    1;34
### Green       0;32     Light Green   1;32
### Cyan        0;36     Light Cyan    1;36
### Red         0;31     Light Red     1;31
### Purple      0;35     Light Purple  1;35
### Brown       0;33     Yellow        1;33
### Light Gray  0;37     White         1;37

## NAME@NAME-mbp[19:44:15] : ~ $
#PS1="\[\033[32m\]\u@\h[\t] :\[\033[0m\]\[\033[36m\] \W\[\033[0m\] $"
#
## NAME@[~] $ 
#PS1="\[\033[32m\]\u\[\033[0m\]\[\033[32m\]@\[\033[32m\][\[\033[36m\]\W\[\033[0m\]\[\033[32m\]]\[\033[0m\]$ "
#
#PS1="\[\033[32m\][\[\033[36m\]\W\[\033[0m\]\[\033[32m\]]\[\033[0m\]$ "
#
## Only Green $
#PS1="\[\033[32m\]\]\$\[\033[0m\] "
#
## NAME@NAME-mbp[19:42:21] : ~
## $
#PS1="\[\033[32m\]\u@\h[\t]\[\033[0m\] :\[\033[36m\] \w\[\033[0m\]\n$ "
#
## NAME@NAME-mbp[19:42:21] : ~ (width~50)
## $
PS1='\[\033[32m\]\u@\h[\t]\[\033[0m\] : \[\033[36m\]$(echo "\w" | sed -e "/^.\{55,\}$/s/^\(.\{15\}\).*\(.\{40\}\)$/\1...\2/")\[\033[0m\]\n$ '
# 
# Underbar
#PS1='\[\e[4m\]\[\033[32m\]\u@\h[\t]\[\033[0m\] : \[\033[36m\]$(echo "\w" | sed -e "/^.\{70,\}$/s/^\(.\{15\}\).*\(.\{30\}\)$/\1...\2/")\[\033[0m\]\[\e[0m\]\n$ '

#--------------------------------------------------------------------
# Global Environment.
export EDITOR='/usr/bin/vim'
export HISTSIZE=100000

#--------------------------------------------------------------------
# Aliases
# Useful comannds.
alias grep='grep --color'
alias rm='rm -i'

# Specific Aliases
alias j='jobs'
alias ..='cd ..'

# ls
alias l='ls -lh'
alias ls='ls -Gh'
alias ll='ls -lGh'
alias la='ls -laGh'
#alias l='ls -la --color=auto'

# git
alias ga='git add'
alias gc='git commit -am'
alias gp='git push'
