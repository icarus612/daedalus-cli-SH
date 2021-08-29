#!/usr/bin/env bash

crs() {
	case $1 in 
		fly)
			source ./.daedalus.sh
			;;
		crun)
			g++ $2.cpp -o $2.out && ./$2.out
			;;
		gpush)

			local msg="updated"
			if [ $# -gt 2 ]
				then
					$msg=$2
			fi
			
			echo $msg
			git add . && git commit -m $msg && git push
			;;
		*)
			echo "Command '$1' not found. \n"
			;;
	esac

}