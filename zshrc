# show git branch
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.zsh/git-prompt.sh

# read git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# setopt PROMPT_SUBST ; 
# PS1='%K{214}%F{232}%c%f%k%F{214}%K{blue}%f%F{232} '$'\ue0a0''$(__git_ps1 "[%s]")%f%k%F{blue}%f $ '
# color setting for git
PS1='%K{214}%F{232}%c%f%k%F{214}%K{blue}%f%F{232} '$'\ue0a0''%f%k'
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{232}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PS1=$PS1'%K{blue}${vcs_info_msg_0_}%k'
PS1=$PS1'%F{blue}%f ' 

# stop beep sound
setopt no_beep

# history size
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# share history file between terminals
setopt share_history

# do not save the same history
setopt hist_ignore_dups
setopt hist_ignore_all_dups

# do not care about capital and lower cases
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
