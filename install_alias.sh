#!/bin/bash
# FoNiX - ALX Advanced GitHub Push : https://github.com/FoNiXPr020/alx-advanced_github
# Adding alias alxsetup.
# Adding alias alxgit.

chmod u+x "$0"

source_file="github"
source_setup="github_setup"

destination_dir="$HOME/Github"

if [ ! -d "$destination_dir" ]; then
	  mkdir -p "$destination_dir"
	    echo "Created directory: $destination_dir"
fi

chmod u+x "$source_file"
chmod u+x "$source_setup"

cp "$source_file" "$destination_dir"
cp "$source_setup" "$destination_dir"

alias_to_git="alias alxgit='$destination_dir/github'"
alias_to_setup="alias alxsetup='$destination_dir/github_setup'"

if grep -q "$alias_to_setup" "$HOME/.bashrc" || grep -q "$alias_to_setup" "$HOME/.bash_aliases"; then
	  echo "Alias 'alxsetup' already exists in ~/.bashrc or ~/.bash_aliases."
  else
	    if [ -f "$HOME/.bash_aliases" ]; then
		        echo "Adding alias to ~/.bash_aliases..."
			    echo "$alias_to_setup" >> "$HOME/.bash_aliases"
			      else
				          echo "Adding alias to ~/.bashrc..."
					      echo "$alias_to_setup" >> "$HOME/.bashrc"
					        fi
						  echo "alxsetup added successfully."
fi

if grep -q "$alias_to_git" "$HOME/.bashrc" || grep -q "$alias_to_git" "$HOME/.bash_aliases"; then
	  echo "Alias 'alxgit' already exists in ~/.bashrc or ~/.bash_aliases."
  else
	    if [ -f "$HOME/.bash_aliases" ]; then
		        echo "Adding alias to ~/.bash_aliases..."
			    echo "$alias_to_git" >> "$HOME/.bash_aliases"
			      else
				          echo "Adding alias to ~/.bashrc..."
					      echo "$alias_to_git" >> "$HOME/.bashrc"
					        fi
						  echo "alxgit Alias added successfully."
fi

rm "$source_file"
rm "$source_setup"

echo "Installation completed."

