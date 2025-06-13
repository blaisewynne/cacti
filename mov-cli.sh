CYAN='\033[0;36m'
NORMAL='\033[0m'
LBLUE='\033[0;34m'
LPURPLE='\033[0;35m'
GREEN='\033[0;32m'

NC='\033[0m'

version=0.3

main () {
	printf "${CYAN}[Mov-Cli] ${NC}\n"
	printf "${LBLUE}Search for a movie using the -p command:${NC}\n"
	read input
	printf "${NORMAL}"
	case $input in

		test | Test)
			printf "Test!\n"
		;;
		-h | --help | -help | help)
			help_info

		;;
		-v | --version | -version | version)
			version_info
		;;
		-p | --play | -play | play)
			check_dependecies
			play_video
		;;
		-i | --info | -info | info)
			program_info
		;;


	*)
		printf "Command not found. Use command -help for assistance.${NC}\n"
esac
}


help_info () {
	printf "${LPURPLE}
	
	Usage:
	
	Options:

	-v, --version
	   Check current version of Mov-Cli
	-h, --help
	   Show current help message
   	-p, --play
	   Play a movie	
	"
	printf "${NORMAL}"
}

version_info () {
	printf "${CYAN}Current Version:${LBLUE}$version\n"
	printf "${NORMAL}"

}

check_dependecies () {

	printf "${GREEN}Checking dependecies...${NC}"
	
	for name in yt-dlp mpv
		do 
			[[ $(which $name 2>/dev/null) ]] || { echo -en "\n$name needs to be installed. Use 'sudo apt-get install $name'";deps=1; }
		done
[[ $deps -ne 1 ]] && printf "${CYAN}OK" || { echo -en "\n${LBLUE}Install the above package and rerun the script.${NC}\n";exit 1; }

}

play_video () {
	
	printf "\n${CYAN}Please enter ${LPURPLE}video link.${NORMAL}\n"
	read url
	printf "${CYAN}Trying to run the movie: ${url}${NC}\n"
	mpv $url

}

program_info () {

	printf "${GREEN}This program was made by a humble programmer named Blaise Wynne${NORMAL}\n"

}


main
