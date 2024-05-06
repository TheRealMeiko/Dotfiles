# ~/.bash_aliases
#

# ------------------------------------------------------
# System Functions
# ------------------------------------------------------
alias ls='ls -al -hF --color --group-directories-first'
alias top='htop'

# ------------------------------------------------------
# Custom Commands
# ------------------------------------------------------

# Backup
alias backup='~/bin/backup-home-directory.sh'

# Fuzzy finder
alias ff='$EDITOR "$(fzf)"'
alias fg='~/bin/fuzzygrep.sh'
alias fh='~/bin/fuzzyhistory.sh'

# Gitpush
alias gp='~/bin/gitpush.sh'

# Jekyll server
alias jserve="bundle exec jekyll serve --livereload"

# Lock screen
alias lock='~/bin/lock.sh'

# New journal entry
alias nn='~/bin/write/new-daily-note.sh'

# Print
alias print='~/bin/wp-print.sh'

# Rip music 
alias rip='~/bin/rip-options.sh'

# Server
alias server='~/bin/server-mount.sh'

# Synaptic
alias synaptic='sudo synaptic'

# Update
alias update='sudo -- sh -c "apt update && apt -y upgrade && apt -y --purge autoremove && apt -y autoclean"'

# VPN
alias vpn='~/bin/vpn.sh'

# Write 
alias write='~/bin/wp-write.sh'

# Writing options
alias wp='~/bin/wp.sh'

