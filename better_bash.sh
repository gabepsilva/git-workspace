

function vpnStatus(){
	if [[ $(expressvpn status) == *"Connected"* ]]
	then
		echo -e "\U1f510" 
  else
  	echo -e "\U1f513" 
	fi
}

function vpnConnect(){
    if [[ -z "$1" ]]
    then
        expressvpn connect cato2
    else
        expressvpn connect $1
    fi
}

function gitBranch(){
	export GIT_PS1_SHOWDIRTYSTATE=1
	export GIT_PS1_SHOWCOLORHINTS=1
	export GIT_PS1_SHOWUNTRACKEDFILES=1

	echo -e $(__git_ps1 '[%s]')
}

alias vc="vpnConnect"
alias vd="expressvpn disconnect"

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}'${BGreen}'\u@\h\[\033[00m\] $(vpnStatus) $(gitBranch) \[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
