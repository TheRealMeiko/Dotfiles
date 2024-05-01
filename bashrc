# ~/.bashrc
#

#-------------------------------------------------------------------------------
# Xresources
#
# Reload & implement any changes made to ~/.Xresources
#if [ -f ~/.Xresources ]; then
#    xrdb -merge ~/.Xresources
#fi

#-------------------------------------------------------------------------------
# Aliases
#
# Load ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#-------------------------------------------------------------------------------
# Binaries Path
export PATH="${HOME}/bin:${PATH}"

#-------------------------------------------------------------------------------
# History
#
# Set the number of lines in active history, and
# the number of lines saved in bash history
HISTSIZE=1000
HISTFILESIZE=1000

# Append to the history file, don't overwrite it
shopt -s histappend

# Ignore & erase duplicate entries in the history file
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups

#-------------------------------------------------------------------------------
# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#-------------------------------------------------------------------------------
# Editor
#
export VISUAL=nvim
export EDITOR=$VISUAL

#-------------------------------------------------------------------------------
# Command Prompt 
#
# Color Options
# red          \[\e[00;31m\]
# green        \[\e[00;32m\]
# yellow       \[\e[00;33m\]
# blue         \[\e[00;34m\]
# purple       \[\e[00;35m\]
# cyan         \[\e[00;36m\]
# light grey   \[\e[00;37m\]
# light red    \[\e[01;31m\]
# light green  \[\e[01;32m\]
# light yellow \[\e[01;33m\]
# light blue   \[\e[01;34m\]
# light purple \[\e[01;35m\]
# light cyan   \[\e[01;36m\]
# white        \[\e[01;37m\]
# no color     \[\e[00m\]
PS1="\[\e[00;32m\]\u@\h \[\e[00;36m\]\w \[\e[00m\]$ "

#-------------------------------------------------------------------------------
# Ruby Exports
#
# You can't use Jekyll without these lines
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

#-------------------------------------------------------------------------------
# Fuzzy Search
#
# Without this line the computer won't know `fzf` has been installed!!
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Default Search Settings
# --files               list only file names
# --hidden              show hiddden files
# --no-follow           don't follow symbolic links
# --no-ingore-vcs       don't ignore version control files
# -g                    items to include or exclude in search
export FZF_DEFAULT_COMMAND='rg --files --no-follow --hidden --no-ignore-vcs'

# Additional Search Otions
# --multi               allows making multiple selections with Tab or Shift-Tab
# --height x%           % of screen occupied by search window   
# --reverse             provides a top down layout
# --preview "cat {}"    display preview of the selected file
# --border              border around preview box
export FZF_DEFAULT_OPTS='--multi --preview "cat {}" --border'

#-------------------------------------------------------------------------------
# Fuzzy search and pass output to the Helix Editor
#
hxs() {
	RG_PREFIX="rg -i --files-with-matches"
	local files
	files="$(
		FZF_DEFAULT_COMMAND_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --multi 3 --print0 --sort --preview="[[ ! -z {} ]] && rg --pretty --ignore-case --context 5 {q} {}" \
				--phony -i -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap" \
				--bind 'ctrl-a:select-all'
	)"
	[[ "$files" ]] && hx --vsplit $(echo $files | tr \\0 " ")
}
