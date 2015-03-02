#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias open='google-chrome-stable'
alias ls='ls --color=auto'
alias ncmpc='ncmpc -c'
alias l='ls'

export TERM=xterm-256color

PS1="\n\[\e[0;35m\]\u \[\e[0m\]in \[\e[0;33m\]\w\[\e[37m\]\n○ \[\e[0m\]"

CDHISTORY=()

function add_pwd_to_history() {
	if [[ ${#CDHISTORY[@]} -gt 9 ]]; then
		# remove the first element
		CDHISTORY=("${CDHISTORY[@]:1}");
	fi
	CDHISTORY=("${CDHISTORY[@]}" "$PWD")
}

function cd() {
	re='^-[0-9]+$';
	backre='^\.[0-9]+$';
	jumpre='^[0-9]+$';

	if [[ ! -d "$@" && $@ =~ $re ]]; then
		args=$@
		jumplength=${args/-/''}
		hislength=${#CDHISTORY[@]}
		index=$((hislength-jumplength))

		if [[ $index -ge 0 ]]; then
			prev=${CDHISTORY[$index]}
			add_pwd_to_history
			command cd "$prev"
		fi
	
	elif [[ ! -d "$@" && $@ =~ $backre ]]; then
		args=$@
		jumplength=${args/\./''}
		p=''
		for (( i=0; i<$jumplength; i++)); do
			p=$p"../"
		done
		add_pwd_to_history
		command cd "$p"
	elif [[ ! -d "$@" && $@ =~ $jumpre ]]; then
		hislength=${#CDHISTORY[@]}
		jumplength=$@

		if [[ $jumplength < $hislength ]]; then
			prev=${CDHISTORY[$jumplength]}
			add_pwd_to_history
			command cd "$prev"
		fi
	
	elif [[ $@ == '--' ]]; then
		hislength=${#CDHISTORY[@]}

		for (( i=0; i<$hislength; i++)); do
			echo $i ${CDHISTORY[$i]}
		done
	else
		add_pwd_to_history
		command cd "$@"
	fi
}
