# Tell other programs like git to use VS Code as the default editor.
set -x EDITOR 'code'
set -x VISUAL 'code'

# Configuration for the history command.
set -x HISTTIMEFORMAT '%d/%m/%y %T '
set -x HISTCONTROL 'ignoredups:erasedups'

# Set programming language paths.
if test -d ~/go
  set -x GOPATH $HOME/go
  set -x PATH $GOPATH/bin $PATH
end
if test -d ~/.composer
  set -x PATH ~/.composer/vendor/bin $PATH
end

# Move files to trash instead of completely removing them.
if which trash > /dev/null
  alias rm="trash"
end

# Add NPM default bin directory to $PATH if created during installation.
if test -d ~/.npm-global
  set -x PATH ~/.npm-global/bin $PATH
end

# Create pbcopy and pbpaste aliases if xclip is installed.
if which xclip > /dev/null
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
end
