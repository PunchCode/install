#!/bin/bash
HOMEDIR=$(eval echo "~$whoami")

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

error() {
  echo ${RED}"Error: $@"${RESET} >&2
}

setup_color() {
  if [ -t 1 ]; then 
    RESET=$(printf '\033[0m')
    RED=$(printf '\033[0;31m')
    GREEN=$(printf '\033[0;32m')
    ORANGE=$(printf '\033[0;33m')
    BLUE=$(printf '\033[0;34m')
    PURPLE=$(printf '\033[0;35m')
    CYAN=$(printf '\033[0;36m')
    LIGHTGRAY=$(printf '\033[0;37m')
    DARKGRAY=$(printf '\033[1;30m')
    LIGHTRED=$(printf '\033[1;31m')
    LIGHTGREEN=$(printf '\033[1;32m')
    YELLOW=$(printf '\033[1;33m')
    LIGHTBLUE=$(printf '\033[1;34m')
    LIGHTPURPLE=$(printf '\033[1;35m')
    LIGHTCYAN=$(printf '\033[1;36m')
    WHITE=$(printf '\033[1;37m')
  else
    RESET=""
    RED=""
    GREEN=""
    ORANGE=""
    BLUE=""
    PURPLE=""
    CYAN=""
    LIGHTGRAY=""
    DARKGRAY=""
    LIGHTRED=""
    LIGHTGREEN=""
    YELLOW=""
    LIGHTBLUE=""
    LIGHTPURPLE=""
    LIGHTCYAN=""
    WHITE=""
  fi
}

main() {
  setup_color

  printf "${GREEN}"
  cat <<-'MULTI'
													_                   _         ####  
	 _ __  _   _ _ __   ___| |__   ___ ___   __| | ___    ####
	| '_ \| | | | '_ \ / __| '_ \ / __/ _ \ / _` |/ _ \   ####
	| |_) | |_| | | | | (__| | | | (_| (_) | (_| |  __/   ####
	| .__/ \__,_|_| |_|\___|_| |_|\___\___/ \__,_|\___|   ####
	|_|                                                   ####     
  
	MULTI
  printf "$RESET"

  echo "${CYAN} Installing ${ORANGE}Command Line Tools${RESET}"
  xcode-select --install

  echo "${CYAN}Installing ${ORANGE}oh my zsh\n"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  # Check to see if Homebrew is installed, and install it if it is not
	if ! command_exists brew; then
  	echo >&2 "${CYAN}Installing ${ORANGE}Homebrew\n"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

  # Installing yarn will install node which will install npm
	if ! command_exists yarn; then
		echo "${CYAN}Installing ${Orange}node${WHITE}, ${ORANGE}npm${WHITE}, and ${ORANGE}yarn\n"
		command -v brew install yarn
	fi

  echo "${CYAN}Fixing global npm path\n"
  mkdir ~/.npm-packages

  npm config set prefix '~/.npm-packages'
  echo "export PATH=$HOMEDIR/.npm-packages/bin:$PATH" >> ~/.zshrc

  source ~/.zshrc
}

main "$@"