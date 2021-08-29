#!/bin/bash

gpush() {
	local msg="updated"
	if [ $# -gt 1 ]
		then
			msg=$2
	fi
	echo "Adding commit files."
	git add .
	echo "Files Added Committing"
	echo "Commit Message:"
	echo $msg
	git commit -m $msg
	echo "Pushing..."
	git push
	echo "Done"
}