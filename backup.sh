#!/bin/bash

echo "=============================="
echo "🛠️ Backup Bash Script"
echo "=============================="

# Get user inputs
read -p "Input directory to compress: " filePath
read -p "Input destination directory for the compressed file: " destinationPath

# Check if the directory to compress exists
if [ -d "$filePath" ]; then
    # Remove trailing slash if present and create a backup file name
    baseName=$(basename "${filePath%/}")  # Get only the directory name
    backupFile="$destinationPath/${baseName}_backup.tar"

    # Create the tar archive
    tar -cf "$backupFile" -C "$(dirname "$filePath")" "$baseName"
    
    # Check if the tar command succeeded
    if [ $? -eq 0 ]; then
        echo "✅ Backup successful! File saved to: $backupFile"
    else
        echo "❌ Backup failed!"
    fi
else
    echo "⚠️ Directory does not exist. Please check the path."
fi
