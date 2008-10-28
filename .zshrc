HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
DIRSTACKSIZE=50
cdpath=(. ~)

export EDITOR=vim
export PAGER=most
export DARCS_ALWAYS_COLOR=1
#export MANPATH=$MANPATH:/usr/share/man
export ACK_COLOR_MATCH=magenta
export PYTHONPATH=~/.local/pypath

# Add goodies to the PATH
if [[ $HOST == archie ]] && [[ ! $PATH =~ ${HOME}/bin ]]; then
    export PATH=${PATH}:${HOME}/bin:${HOME}/.local/bin
fi

# Load aliases
if [[ -r ${HOME}/.aliasrc ]]; then
    eval `awk '/^[^# ]/ {print "alias " $0}' ${HOME}/.aliasrc`
fi

# Load git_ps1
if [[ -r ${HOME}/.zsh/git ]]; then
    . ${HOME}/.zsh/git
fi

# Enable color support of ls
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
fi

psvar=()
# Set the title to "user@host: directory"
case $TERM in
    (rxvt*|xterm*)
        precmd () {
            print -Pn "\e]0;%n@%m: %~\a"
            if [[ $HOST == archie && $USER == jeff ]]; then
                psvar[2]=$(__git_ps1)
            fi
        }
	;;
esac

# Set the prompt
RPS1=$'%{\e[34m%}%~%{\e[0m%}%{\e[35m%}%2v%{\e[0m%}'
PS1=$'%{\e[36m%}%v %{\e[0m%}'
case $HOST in
    (boofar|archie)
        psvar='$';;
    (*)
        psvar="($HOST) %%";;
esac

if [[ $UID == 0 ]]; then
    psvar='##'
fi

# Set up completion
autoload -U compinit
compinit -i

# From zsh book
zstyle ':completion:*:warnings' format 'No matches: %d'
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Show and group completions by description
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# From zsh-lovers
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ${HOME}/.zsh/cache
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:functions' ignored-patters '_*'

zstyle ':completion:*:default' list-colors  ${(s.:.)LS_COLORS}

setopt                  \
    aliases             \
    NO_all_export       \
    always_last_prompt  \
    NO_always_to_end    \
    append_history      \
    auto_cd             \
    auto_list           \
    auto_menu           \
    auto_name_dirs      \
    auto_param_slash    \
    auto_remove_slash   \
    auto_pushd          \
    NO_beep             \
    chase_dots          \
    chase_links         \
    NO_clobber          \
    correct             \
    hash_cmds           \
    hash_dirs           \
    hash_list_all       \
    hist_find_no_dups   \
    hist_ignore_dups    \
    hist_ignore_all_dups\
    hist_verify         \
    inc_append_history  \
    list_ambiguous      \
    multios             \
    NO_overstrike       \
    pushd_ignore_dups   \
    pushd_minus         \

# Load keychain for ssh-agent
[[ $USER == jeff ]] && [[ $HOST == archie ]] && /usr/bin/keychain -q ${HOME}/.ssh/id_rsa
[[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh

# Keybindings
bindkey -e
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey '\Cp'  history-beginning-search-backward
bindkey '\Cn'  history-beginning-search-forward
bindkey '\Cl'  forward-word
bindkey '\Ch'  backward-word

# cdable vars
py=/usr/lib/python2.5/site-packages
drp=~/src/dp
dp=~drp/drproject
dpenv=~drp/hacking/drp_root
alias dp='cd ~dp'
dj=~/src/django/django
alias dj='cd ~dj'
basie=~/src/basie
basie(){
    cd ~basie
    source bin/activate
    # yay colors
    PS1=$(echo $PS1 | sed 's/^\(([^)]*)\)/%{[32m%}\1%{[0m%}/')
}


# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g M='| most'
alias -g V='| view -'
alias -g A='| ack'

# Functions
switchxorg(){
    if [[ /etc/X11/xorg.conf -ef /etc/X11/xorg.conf.acer ]]; then
        sudo ln -s -f /etc/X11/xorg.conf.single /etc/X11/xorg.conf
        echo "switching to single"
    else
        sudo ln -s -f /etc/X11/xorg.conf.acer /etc/X11/xorg.conf
        echo "switching to acer"
    fi
}

em () {
    ~/bin/em $@ &!
}

sd () {
    svn diff $@ | vim -R -
}

ann () {
    tig blame $@
}

di () {
    diff $@ | vim -R -
}

mc () {
    mk $@ && cd $@
}

gig () {
	for f in $*
		echo $f >> ~/.gitignore
}
