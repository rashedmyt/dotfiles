# --------------------- #
# Author: rashedmyt	#
# --------------------- #

# Setup ZSH PROMPT
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit
autoload -Uz vcs_info
setopt prompt_subst
precmd () { vcs_info }
zstyle ':vcs_info:git:*' formats '(%F{yellow}%b%f)'
export PROMPT='[%F{green}%n@%m%f][%F{cyan}%~%f]${vcs_info_msg_0_}'$'\n''%# '

# Update PATH with tools
export PATH=$HOME/fuchsia/.jiri_root/bin:$PATH		# Fuchsia
export PATH=$PATH:$HOME/github/flutter/flutter/bin	# Flutter

# Environment Variables
export EDITOR=vim

# Aliases
alias ls='ls --color=auto'

