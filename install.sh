#!/usr/bin/env sh
#

lscolors_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"

if gdircolors -b LS_COLORS > lscolors.sh && gdircolors -c LS_COLORS > lscolors.csh ; then
  if mv lscolors.sh lscolors.csh "$lscolors_data_dir"; then
    cat <<EOF
To enable the colors, add the following line to your shell's start-up script:

For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):
  source "$lscolors_data_dir/lscolors.sh"

For C shell (e.g. ~/.cshrc):
  source "$lscolors_data_dir/lscolors.csh"

EOF
  fi
fi
