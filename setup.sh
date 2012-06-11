
for dotfile in "aliases" "irbrc"
do
  echo -n "* \"~/.$dotfile\" "

  if [ ! -f ~/.$dotfile ]; then
    cp ./$dotfile ~/.$dotfile
    echo "file created"
  else
    echo "file already exists!"
  fi
done
