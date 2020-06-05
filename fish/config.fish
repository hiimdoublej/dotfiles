# attatch to tmux when not in tmux
# must be placed top of the order
# or the set commands will run twice and double your path
# if status is-interactive
# and not set -q TMUX
#     tmux attach -t 0; or tmux new -s 0
# end

#themes
# set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized-dark
# set -g theme_color_scheme gruvbox
set -g theme_display_virtualenv yes
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -g theme_display_user yes

# locale
set -x LC_TIME en_US
set -x LC_ALL en_US.UTF-8

# editor
set -x EDITOR vim

# fzf
set -x FZF_DEFAULT_OPTS '--height 30% --layout=reverse --border'

# autojump
if test -f /home/hiimdoublej/.autojump/share/autojump/autojump.fish; . /home/hiimdoublej/.autojump/share/autojump/autojump.fish; end

# ruby gem for vimgolf
# set PATH ~/.gem/ruby/2.5.0/bin $PATH

# pyenv, pipenv stuff
# set -x PATH ~/.pyenv/bin $PATH
# set -x PYENV_ROOT ~/.pyenv
# set -x PYENV_SHELL fish
# status --is-interactive; and source (pyenv init -|psub)
# eval (pipenv --completion)

#django auto complete on ./manage.py
# __fish_complete_django manage.py

#golang
# set -x PATH $PATH $HOME/go/bin
# set -x GOPATH $HOME/go

#drone
# set -x DRONE_SERVER https://drone.d1v.io
# set -x DRONE_TOKEN eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoiaGlpbWRvdWJsZWoiLCJ0eXBlIjoidXNlciJ9.EzgX473fB-UOJJ2LJ9Q3ILzgmVphu46T2MtY0WXpK98

# yarn bin
set -x PATH $PATH $HOME/.yarn/bin

# autojump
[ -f /usr/local/Cellar/autojump/22.5.3/share/autojump/autojump.fish ];
source /usr/local/Cellar/autojump/22.5.3/share/autojump/autojump.fish

# The next line updates PATH for the Google Cloud SDK.
bass source '/Users/hiimdoublej/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '/Users/hiimdoublej/google-cloud-sdk/completion.bash.inc'

# thefuck --alias shit| source

# aliases
# function vpn
#     ~/vpn/vpn.sh
# end
function vi
    vim $argv
end
function mkcd
    mkdir -p $argv; cd $argv;
end
function ks
    set conatiner_name (kubectl get pods --sort-by=.metadata.creationTimestamp | awk '/ghost/ && !/(r(e|a)|wo|jo|cloud)/ {print$1}' | tail -n 1)
    kubectl exec -it $conatiner_name bash
end
function kr
    set conatiner_name (kubectl get pods --sort-by=.metadata.creationTimestamp | awk '/ghost-redis/ {print$1}')
    kubectl exec -it $conatiner_name redis-cli
end
function wk
    watch -d 'kubectl get po | grep ghost'
end
function ds
    docker exec -it ci-lottery_ghost_1 bash
end
function dr
    docker exec -it ci-lottery_ghost-redis_1 redis-cli -n 1
end

set -p PATH /usr/local/bin $PATH
set -p PATH /usr/local/Cellar/libpq/12.1_1/bin $PATH
