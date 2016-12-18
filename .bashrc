#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

####################### NEW ################################


#.bashrc
if [[ $- != *i* ]] ; then
# Shell is non-interactive. Be done now!
return
fi
 
# Bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
 
 
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
 
# Print some nice fortune text
fortune
echo
