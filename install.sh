#!/bin/bash

# WAY CLI Installer
# This script installs the way command globally

set -e

INSTALL_DIR="$HOME/bin"
SCRIPT_NAME="way"
SOURCE_FILE="$(realpath "$(pwd)/way.py")"

echo "Installing WAY CLI..."

# Create bin directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: way script not found in current directory"
    exit 1
fi

# Make source file executable
chmod +x "$SOURCE_FILE"

# Remove existing installation if it exists
if [ -f "$INSTALL_DIR/$SCRIPT_NAME" ] || [ -L "$INSTALL_DIR/$SCRIPT_NAME" ]; then
    echo "Removing existing installation..."
    rm "$INSTALL_DIR/$SCRIPT_NAME"
fi

# Create symlink instead of copying
echo "Creating symlink to $INSTALL_DIR/$SCRIPT_NAME..."
ln -s "$SOURCE_FILE" "$INSTALL_DIR/$SCRIPT_NAME"

# Add to PATH if not already there
if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
    echo "Adding $INSTALL_DIR to PATH in ~/.zshrc"
    echo 'export PATH="$PATH:$HOME/bin"' >> ~/.zshrc
    echo "⚠️  Please run 'source ~/.zshrc' or restart your terminal to use the 'way' command"
fi

echo "✅ WAY CLI installed successfully!"
echo "You can now run: way --help"
echo ""
echo "To uninstall, run: rm $INSTALL_DIR/$SCRIPT_NAME"
echo ""
echo "ℹ️  This installation uses a symlink, so changes to way.py will automatically be reflected in the 'way' command."
