#!/bin/bash

# cron input:
# */5 * * * * /Users/roller/working/dis/.autocommit.sh >> /Users/roller/working/dis/.autocommit.log

cd /Users/roller/working/dis

if [ -n "$(git status --porcelain)" ]; then 
    git add --all .
    git commit -am "Autocommit: `git status --porcelain | cut -d ' ' -f'3-' | tr -s '\n' '\\ '`"
fi

