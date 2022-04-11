# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

for file in ~/.{path,bash_prompt,exports,functions,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

#shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
#shopt -s direxpand
#shopt -s dirspell
shopt -s expand_aliases
shopt -s extglob
#shopt -s globstar
shopt -s histappend
shopt -s histreedit
#shopt -s lithist
shopt -s nocaseglob

for option in autocd direxpand dirspell globstar lithist; do
	shopt -s "$option" 2>/dev/null
done

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
