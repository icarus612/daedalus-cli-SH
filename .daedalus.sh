#!/usr/bin/env bash

crs() {
	local current_dir=$(pwd)

	case $1 in 
		fly)
			source $current_dir/.daedalus.sh
			;;
		crun)
			g++ $2.cpp -o $2.out && ./$2.out
			;;
		gpush)
				chmod +x $current_dir/bash_scripts/git.sh
				source $current_dir/bash_scripts/git.sh
				gpush
			;;
		*)
			echo "Command '$1' not found. \n"
			;;
	esac

}