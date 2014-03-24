# Oh My ZSH cruft
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# PATH
export PATH="/usr/local/bin:/usr/local/sbin:/home/twi/bin:/usr/sbin:/sbin:/usr/bin:/bin:/usr/local/games:/usr/games"

#Because fuck you my terminals do support 256 colors
case $TERM in
	*xte*)
		export TERM=xterm-256color
		;;
	*scree*)
		export TERM=screen-256color
esac

# Pythonz cruft
function pythonz_install {
	curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
}
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

# Commandline pastebins
ixio() {
	curl -n -F 'f:1=<-' http://ix.io
}

sprunge() {
	curl -F "sprunge=<-" http://sprunge.us
}

# My prompt
PROMPT='%m %~$(git_prompt_info); %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}"

export EDITOR=vim

