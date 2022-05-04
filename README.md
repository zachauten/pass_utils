# pass-utils
A collection of [extensions](https://www.passwordstore.org/#extensions) to [pass](https://www.passwordstore.org/)

## Installation
Set the ```PASSWORD_STORE_ENABLE_EXTENSIONS``` environment variable to ```true```.
```
pass git submodule add https://github.com/zachauten/pass-utils.git .extensions
```

## HOME
Open a url in the default web browser. Inspired by [brew home](https://docs.brew.sh/Manpage#home-homepage---formula---cask-formulacask-)
Depends on ```open``` (macos) or ```xdg-open``` (linux)
### Usage
```pass home pass-name...```

## USER
Parse a file for a ```username``` field and copy contents to stdout or clipboard.
Uses ```username``` because the field is also respected by [Pass for iOS](https://github.com/mssun/passforios) autofill.
### Usage
```pass user [-c] pass-name```

## HIBP
Use the [have i been pwned? api](https://haveibeenpwned.com/API/v3) to list any compromised passwords, printing a message if a pwned password is detected. Depends on curl.

### Usage
```pass hibp pass-name```

```pass flat | xargs -n1 pass hibp```

## SHASUM
Prints the sha1 checksum for a given password.
### Usage
```pass shasum pass-name```

## FLAT
Prints the names of all passwords without the tree styling. Good for piping all your passwords into xargs.

### Usage
```pass flat```
