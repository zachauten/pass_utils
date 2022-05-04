find ~/.password-store/ -type f -name '*.gpg' | sed -n -e 's/.gpg$//p' | sed -n -e "s#${HOME}/.password-store//##p"
