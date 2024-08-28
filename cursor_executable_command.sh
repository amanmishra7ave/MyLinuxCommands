#!/bin/bash

# Path to your Cursor AppImage
CURSOR_PATH="/home/to/curson.AppImage"

#Check of the AppImage exits
if [ -f"$CURSOR_PATH"]; then
    exec "$CURSOR_PATH"
else
    echo "Cursor AppImage is not found it $CURSOR_PATH"
    exit 1
fi