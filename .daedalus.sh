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
			local msg="$2"
			echo $msg
			git add . && git commit -m $msg && git push
			;;
		*)
			echo "No command found by name $2"
			;;
	esac

}