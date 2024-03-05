#!/usr/bin/env bash
#=================================================
# name:   run_once_after_xdg-setup
# author: author <author_contact>
# date:   06/03/2024
#=================================================
echo -en "\tSet browser script as default browser (xdg-settings) ... "
xdg-settings set default-web-browser browser.desktop
echo "done"

echo -en "\tSet email script as default emial (xdg-settings) ... "
xdg-settings set default-url-scheme-handler mailto email.desktop
echo "done"

echo -en "\tSet email script as default mailto handler (xdg-mime) ... "
xdg-mime default email.desktop 'x-scheme-handler/mailto'
echo "done"

echo -en "\tSet lf as default manager (xdg-mime) ... "
xdg-mime default lf.desktop 'inode/directory'
echo "done"

echo -en "\t$(
  if [[ -n "$(command -v gio)" ]]; then
    gio mime inode/directory lf.desktop
  elif [[ -n $(command -v gvfs-mime) ]]; then
    gvfs-mime --set inode/directory lf.desktop
  fi
)" && echo " ... done"
