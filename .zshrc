HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
DIRSTACKSIZE=50
cdpath=(. ~)

fpath=( ${HOME}/.zsh/func $fpath )
export EDITOR=vim
export PAGER=most
export ACK_COLOR_MATCH=magenta

export WORKON_HOME=$HOME/.virtualenvs
source $HOME/.virtualenvwrapper

# Add goodies to the PATH
echo $PATH | grep -q $HOME/bin
if [[ $? -eq 1 ]]; then
    for f in dev/git-svn-clone-externals bin/git-tools .local/bin bin
        EXTRA=${HOME}/$f:$EXTRA
    export PATH=$EXTRA:$PATH
fi

# Load aliases
if [[ -r ${HOME}/.aliasrc ]]; then
    eval `awk '/^[^# ]/ {print "alias " $0}' ${HOME}/.aliasrc`
fi

# Load profile
if [[ -r ${HOME}/.profile ]]; then
    source ${HOME}/.profile
fi

# Load git_ps1
if [[ -r ${HOME}/.zsh/git-ps1 ]]; then
    . ${HOME}/.zsh/git-ps1
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
            psvar[2]=$(__git_ps1)
        }
	;;
esac

# Set the prompt
RPS1=$'%{\e[34m%}%~%{\e[0m%}%{\e[35m%}%2v%{\e[0m%}'
PS1=$'%{\e[36m%}%v %{\e[0m%}'
case $HOST in
    (archie|venona)
        psvar='$';;
    (khan.mozilla.org)
        psvar='(khan) $';;
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
    extended_glob       \
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
[[ -x /usr/bin/keychain ]] && /usr/bin/keychain -q ${HOME}/.ssh/id_rsa
[[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh

# Keybindings
bindkey -e
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey '\Cp'  history-beginning-search-backward
bindkey '\Cn'  history-beginning-search-forward
bindkey '\Cl'  forward-word
bindkey '\Ch'  backward-word

# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g M='| most'
alias -g V='| view -'
alias -g A='| ack'

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
