#!/bin/bash

CURSOR_USER_DIR="$HOME/Library/Application Support/Cursor/User"

ln -sf ~/code/dotfiles/cursor/settings.json "$CURSOR_USER_DIR/settings.json"
ln -sf ~/code/dotfiles/cursor/keybindings.json "$CURSOR_USER_DIR/keybindings.json"
