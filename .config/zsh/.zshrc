# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[white]%}%n%{$fg[white]%}@%{$fg[white]%}%M %{$fg[white]%}%~%{$fg[white]%}]%{$reset_color%}$%b "
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.histfile

# Basic auto/tab complete:
setopt auto_cd
stty stop undef
setopt interactive_comments
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1
export EDITOR='nvim'

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line
#bindkey "^[[1:3D" backward-word
#bindkey "^[[1:3C" forward-word
# My custom aliases
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -iv" \
	mkd="mkdir -pv" \
  	ka="killall" \
	sdn="doas poweroff" \
	f="$FILE" \
    pacs='doas pacman -S' \
    update='doas pacman -Syu' \
    pacrn='doas pacman -Rcns' \
    pacr='doas pacman -Rns' \
    pacsearch='pacman -Ss' \
    ls="ls -hN --color=auto --group-directories-first" \
    ytalbum="yt-dlp $1 --split-chapters -f 251 --recode mp3 --embed-metadata" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
    ga='git add -A' \
    gm='git commit -m' \
    yt4='yt-dlp -f 22' \
    yt3='yt-dlp -f 140' \
    sudo='doas' \
    dots="git --git-dir=$HOME/dots.git --work-tree=$HOME" \
    gp='git push' \

# ZSH configuration
#bindkey '^ ' autosuggest-accept


# Load syntax and auto-suggestion; should be last.
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
