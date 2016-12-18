#!/bin/bash
if [ $(pgrep -xc "emacs") = "0" ]
then
    emacs --daemon 
fi
    emacsclient -c $*
