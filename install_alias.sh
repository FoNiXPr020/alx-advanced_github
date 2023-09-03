#!/bin/bash
# FoNiX - ALX Advanced GitHub Push : https://github.com/FoNiXPr020/alx-advanced_github

chmod +x $0

source_file="github"
source_setup="github_setup"

destination_dir="C:/Github/"

if [ ! -d "$destination_dir" ]; then
  mkdir -p "$destination_dir"
  echo "Created directory: $destination_dir"
fi

cp "$source_file" "$destination_dir"
cp "$source_setup" "$destination_dir"

alias_to_git="alias alxgit='C:/Github/./github'"
alias_to_setup="alias alxsetup='C:/Github/./github_setup'"

if grep -q "$alias_to_setup" ~/.bashrc || grep -q "$alias_to_setup" ~/.bash_aliases; then
  echo "Alias 'alxgit' already exists in ~/.bashrc or ~/.bash_aliases."
else
  if [ -f ~/.bash_aliases ]; then
    echo "Adding alias to ~/.bash_aliases..."
    echo "$alias_to_setup" >> ~/.bash_aliases
  else
    echo "Adding alias to ~/.bashrc..."
    echo "$alias_to_setup" >> ~/.bashrc
  fi
  echo "alxsetup added successfully."
fi

if grep -q "$alias_to_git" ~/.bashrc || grep -q "$alias_to_git" ~/.bash_aliases; then
  echo "Alias 'alxgit' already exists in ~/.bashrc or ~/.bash_aliases."
else
  if [ -f ~/.bash_aliases ]; then
    echo "Adding alias to ~/.bash_aliases..."
    echo "$alias_to_git" >> ~/.bash_aliases
  else
    echo "Adding alias to ~/.bashrc..."
    echo "$alias_to_git" >> ~/.bashrc
  fi
  echo "alxgit Alias added successfully."
fi

echo "Installation completed."
