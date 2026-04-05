#!/bin/bash
# Push current branch to origin remote
# Usage: bash zhuxs_learn/push_to_remote.sh [commit message]

BRANCH=$(git branch --show-current)

if [ -n "$1" ]; then
    git add -A
    git commit -m "$1"
fi

git push -u origin "$BRANCH"
