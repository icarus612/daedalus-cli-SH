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
			if [ $# -gt 1 ]
				then
					msg=$2
			fi
			echo "Adding commit files."
			git add .
			echo "Committing"
			echo "Commit Message:"
			echo $msg
			git commit -m $msg
			echo "Pushing..."
			git push
			echo "Done"
			;;
		*)
			echo "Command '$1' not found. \n"
			;;
	esac

}