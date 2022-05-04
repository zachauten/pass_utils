#! /bin/sh

if [[ $# -lt 1 ]]
then
	echo "Usage: pass shasum PASSWORD"
else
	pass show $1 | head -n1 | tr -d '\n' | shasum | head -c 40
fi

