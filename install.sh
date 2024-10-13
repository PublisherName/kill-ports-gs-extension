#!/bin/bash

if (( $EUID == 0 )); then
	INSTALL_DIR="/usr/share/gnome-shell/extensions"
else
	INSTALL_DIR="$HOME/.local/share/gnome-shell/extensions"
fi
mkdir -p $INSTALL_DIR

echo "Installing extension files in $INSTALL_DIR/killports@subashghimire.info.np"
cp -r killports@subashghimire.info.np $INSTALL_DIR

echo "Done."
exit 0
