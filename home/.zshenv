# SSL
export SSL_CERT_FILE=$HOME/cacert.pem
export PGHOST=localhost

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
