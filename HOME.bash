#! /bin/sh

for url in "$@"
do 
	pass $url | sed -n -e 's/^home: //p' | xargs python -m webbrowser
done

