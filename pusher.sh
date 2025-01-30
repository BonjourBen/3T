#!/bin/bash

if [ "$#" -lt 2]; then
    echo "Usage: npm run send -- <message> <branch> [origin]"
    exit 1
fi

MESSAGE = $1
BRANCH = $2
ORIGIN ${3:-origin}

git add .
git commit -m "$MESSAGE"
git push $ORIGIN $BRANCH