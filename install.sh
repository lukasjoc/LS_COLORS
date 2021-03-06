#!/usr/bin/env sh
#

lscolors_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"

if dircolors -b LS_COLORS > lscolors.sh && dircolors -c LS_COLORS > lscolors.csh ; then
  if mv -t "$lscolors_data_dir" lscolors.sh lscolors.csh ; then
    cat <<EOF
To enable the colors, add the following line to your shell's start-up script:

For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):
  source "$lscolors_data_dir/lscolors.sh"

For C shell (e.g. ~/.cshrc):
  source "$lscolors_data_dir/lscolors.csh"

EOF
  fi
fi
