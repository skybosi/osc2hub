
cfont()
{
	while (($#!=0))
	do
		case $1 in
			-b)
				echo -ne " ";
				;;
			-t)
				echo -ne "\t";
				;;
			-n)     echo -ne "\n";
				;;
			-black)
				echo -ne "\033[30;1m";
				;;
			-red)
				echo -ne "\033[31;1m";
				;;
			-green)
				echo -ne "\033[32;1m";
				;;
			-yellow)
				echo -ne "\033[33;1m";
				;;
			-blue)
				echo -ne "\033[34;1m";
				;;
			-purple)
				echo -ne "\033[35;1m";
				;;
			-cyan)
				echo -ne "\033[36;1m";
				;;
			-white|-gray) echo -ne "\033[37;1m";
				;;
			-reset)
				echo -ne "\033[0;1m";
				;;
			-h|--help)
				echo "Usage: cfont -color1 message1 -color2 message2 ...";
				echo "eg:       cfont -red [ -blue message1 message2 -red ]";
				;;
			*)
				echo -e "$1"
				cfont -reset
				;;
		esac
		shift
	done
}
