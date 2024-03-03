#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Make the script executable
chmod +x sniffer

# Copy the script to a directory in the user's PATH
cp sniffer /usr/local/bin

echo "Installation complete."
