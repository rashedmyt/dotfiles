# --------------------- #
# File	  : .zshrc	#
# Version : 0.0.1	#
# Author  : rashedmyt	#
# --------------------- #

# --------------------- #
# History		#
# --------------------- #
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100

# --------------------- #
# Path			#
# --------------------- #
export PATH=$HOME/fuchsia/.jiri_root/bin:$PATH		# Fuchsia
export PATH=$PATH:$HOME/github/flutter/flutter/bin	# Flutter

# --------------------- #
# Variables		#
# --------------------- #
export EDITOR=vim

# --------------------- #
# Aliases		#
# --------------------- #
alias ls='ls --color=auto'

# --------------------- #
# Prompt 		#
# --------------------- #

# Completion
autoload -Uz compinit
compinit
zstyle :compinstall filename '$HOME/.zshrc'

# VCS
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '(%F{yellow}%b%f)'

precmd () { vcs_info }
setopt prompt_subst
export PROMPT='[%F{green}%n@%m%f][%F{cyan}%~%f]${vcs_info_msg_0_}'$'\n''%# '
