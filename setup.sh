#!/bin/bash

# 1. Check if we are in Termux
if [ -d "$PREFIX/bin" ]; then
    echo "Detected Termux environment..."
    INSTALL_DIR="$PREFIX/bin"
    COMMAND_PREFIX=""  # No sudo needed in Termux
else
    echo "Detected Standard Linux environment..."
    INSTALL_DIR="/usr/local/bin"
    COMMAND_PREFIX="sudo" # Sudo needed for Linux system folders
fi

# 2. Install dependencies
echo "Installing python-requests..."
pip install requests --quiet

# 3. Download and Install
echo "Fetching fetcho.py to $INSTALL_DIR..."
$COMMAND_PREFIX curl -sL https://raw.githubusercontent.com/featherrz/Fetcho-Tool/main/fetcho.py -o $INSTALL_DIR/fetcho

# 4. Set Permissions
$COMMAND_PREFIX chmod +x $INSTALL_DIR/fetcho

echo "Done! You can now run 'fetcho' from anywhere."
