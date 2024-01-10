# Postgres
fish_add_path /Applications/Postgres.app/Contents/Versions/13/bin

# Java
setjdk 17

# I18n
#set -x LANG "no_NO.UTF-8"

# Ruby
set -x RUBY_CONFIGURE_OPTS --with-openssl-dir=(brew --prefix openssl@1.1)
# set -x RBENV_ROOT /usr/local/var/rbenv
#. (rbenv init -|psub)

# Python / pyenv / virtualenv
#status --is-interactive; and source (pyenv init -|psub)

# iTerm2 Shell Integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Amazon AWS
set -x AWS_PROFILE vilect
set -x AWS_EB_PROFILE vilect
set -x AWS_REGION eu-west-1

# Atuin
if status is-interactive
	atuin init fish | source
end
