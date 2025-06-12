CYAN='\033[0;36m'
NORMAL='\033[0m'
LBLUE='\033[1;34m'
LPURPLE='\033[1;35m'

version=0.1

main () {
	printf "${LBLUE}===========================================================================================================\n"
	printf "${CYAN}                                                 Mov-Cli ${NORMAL}\n"
	printf "${LBLUE}===========================================================================================================\n"
	printf "${CYAN}[Mov-Cli]\n"
	read input
	case $input in

		test)
			printf "Test!"
		;;
		help)
			help_info

		;;
		-v)
			version_info
		;;

	*)
		printf "Command not found. Use command help for assistance.\n"
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
	"
	echo ""
	printf "${NORMAL}"
}

version_info () {
	printf "${CYAN}Current Version: ${LBLUE}$version\n"
	printf "${NORMAL}"

}


main
