c() { cd ~/Develop/$1;  }

_c() { _files -W ~/Develop -/; }
compdef _c c

fuck() {
	if killall -9 "$2"; then
		echo ; echo " (╯°□°）╯︵$(echo "$2"|toilet -f term -F rotate --gay)"; echo
	fi
}

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

function rbenvsudo(){
  executable=$1
  shift 1
  sudo $(rbenv which $executable) $*
}

