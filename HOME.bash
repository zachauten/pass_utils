#! /bin/sh

if [[ $# -lt 1 ]]
then
	echo "Usage: pass home pass-name...";
	exit 1;
fi


for n in "$@"
# Try 'open' (macos) then 'xdg-open' (linux)
do 
	URL=$(pass $n | sed -n -e 's/^home: //p')
	if open $URL > /dev/null 2>&1; then
		:
	else
		xdg-open $URL > /dev/null 2>&1
	fi
done

