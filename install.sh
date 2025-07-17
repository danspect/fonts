#!/usr/bin/bash
# Licensed under the MIT License. See LICENSE file in the project root for details.

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

DEST="$HOME/.local/share/fonts"

install_fonts() {
	echo -e "${BLUE}[*]${NC} Moving fonts to $DEST"

	mkdir -p "$DEST"

	if mv fonts/* "$DEST/"; then
		echo -e "${GREEN}[+]${NC} Fonts moved successfully"
		return 0
	else
		echo -e "${RED}[-]${NC} Error moving fonts"
		return 1
	fi
}

load_fonts() {
	echo -e "${BLUE}[*]${NC} Updating fonts cache"

	if fc-cache -fv >/dev/null; then
		echo -e "${GREEN}[+]${NC} Cache updated successfully"
		return 0
	else
		echo -e "${RED}[-]${NC} Failed to update cache"
		return 1
	fi
}

if install_fonts && load_fonts; then
	echo -e "${GREEN}[+]${NC} Fonts installed successfully"
else
	echo -e "${RED}[-]${NC} An error occurred while installing the fonts"
fi
