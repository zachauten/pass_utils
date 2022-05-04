#! /bin/sh

if [[ $# -lt 1 ]]
then
	echo "Usage: pass hibp PASSWORD"
else
	HASH=$(pass shasum $1)
	HEAD=$(printf $HASH | head -c 5)
	TAIL=$(printf $HASH | tail -c 35)
	MATCH=$(curl -s -H "hibp-api-key: $HIBP_KEY" https://api.pwnedpasswords.com/range/$HEAD | grep -i $TAIL)
	[[ -n $MATCH ]] && echo "$1 has been pwned!"
fi

