#!/usr/bin/env bash

ddls() {
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
				$current_dir/bash_scripts/git/gpush.sh
				exit
			;;
		*)
			echo "Command '$1' not found. \n"
			;;
	esac

}