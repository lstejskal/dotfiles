#!/bin/bash

# use -f or --force parameter to override configuration files
# configuration files are not overrided by default
if [ "$1" == "-f" ] || [ "$1" == "--force" ]; then
  OVERRIDE=true
else
  OVERRIDE=false
fi

# use -h or --help parameter to write basic usage info
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  echo "
This script install dotfiles to your home directory.

Command-line params:
-h|--help   - prints basic usage info
-f|--force  - overrides configuration files in you home directory
            with dotfiles
"

else

  for dotfile in "aliases" "irbrc"
  do
    echo -n "* \"~/.$dotfile\" "
  
    if [ ! -f "~/.$dotfile" ] || [ OVERRIDE == true ]; then
      rm ~/.$dotfile
      cp ./$dotfile ~/.$dotfile
      echo "file created"
    else
      echo "file already exists!"
    fi
  done

fi
