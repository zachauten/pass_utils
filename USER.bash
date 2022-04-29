#! /bin/sh

OPTIND=1
clip=0

while getopts "c:" opt; do
	case "$opt" in
		c) clip=1; shift ;;
	esac
done

if [[ $# -ne 1 ]]
then
	echo "Usage: pass user [-c] pass-name";
	exit 1;
fi

pass $1                      | 
sed -n -e 's/^username: //p' | 
if [[ $clip -eq 1 ]]
then
	tr -d "\n"                   | 
	pbcopy
	echo "Copied $1's username to clipboard."
else
	cat
fi
