#!/usr/bin/env bash

# GIT PS1 status
# GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"

__rbenv_ps1 ()
{
#  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
#  printf " (%s)" $rbenv_ruby_version
  printf ""
}

function prompt_command() {
  PS1="${green}\u@\H${reset_color}: ${blue}\w${reset_color}${yellow}$(__rbenv_ps1)${reset_color}${red}$(__git_ps1)${reset_color}${reset_color}\$ "
}

prompt_command
