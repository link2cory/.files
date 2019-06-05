#!/bin/bash

# for each dot file in this directory make a symlink in the current user's home directory
for dotfile in .files/.*; do
  # there should always be something matching, but just in case...
  [ -e "$dotfile" ] || continue

  # I imagine there is a better way to exclude these files but this works for now
  if [ "$dotfile" = ".files/." ] || [ "$dotfile" = ".files/.." ]; then
    continue
  fi
  # if the file is a directory, we need to backup the target first
  if [[ -d "$dotfile" ]]; then
    BASENAME=$(basename $dotfile)
    mv ~/${BASENAME} ~/${BASENAME}.bak
  fi
  # ok now we can make our links, backing any preexisting files up
  ln -sbf `realpath $dotfile` -t ~/ -S .bak 
done
