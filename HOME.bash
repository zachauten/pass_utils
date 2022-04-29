#! /bin/sh

if [[ $# -lt 1 ]]
then
	echo "Usage: pass home pass-name...";
	exit 1;
fi


for n in "$@"
do 
	pass $n | sed -n -e 's/^home: //p' | xargs python -m webbrowser
done

