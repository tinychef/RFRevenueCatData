#!/bin/bash

# Check if a commit message was provided
if [ -z "$1" ]; then
    echo "Error: Please provide a commit message"
    echo "Usage: ./git-publish.sh \"Your commit message\""
    exit 1
fi

# Store the commit message
COMMIT_MESSAGE="$1"

# Configure git pull strategy (only needs to be done once)
git config pull.rebase false

# Add all changed files
echo "Adding files to staging..."
git add index.html csvjson.json git-publish.sh

# Commit changes with provided message
echo -e "\nCommitting changes..."
git commit -m "$COMMIT_MESSAGE"

# Pull and merge remote changes
echo -e "\nPulling and merging remote changes..."
git pull origin main

# Push changes
echo -e "\nPushing changes..."
git push origin main

echo -e "\nDone! 🎉" 