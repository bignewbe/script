#!/bin/sh

LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u} 2>/dev/null)
BASE=$(git merge-base @ @{u} 2>/dev/null)

if [ "$LOCAL" = "" ] || [ "$REMOTE" = "" ] || [ "$BASE" = "" ]; then
    echo "Error";
	exit;
fi

if [ "$LOCAL" = "$REMOTE" ]; then
    echo "Up-to-date";
elif [ "$LOCAL" = "$BASE" ]; then
    echo "Need to pull"
elif [ "$REMOTE" = "$BASE" ]; then
    echo "Need to push";
else
    echo "Diverged";
fi
