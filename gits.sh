#!/bin/bash

ls -1 | xargs -I '{}' sh -c '
    cd {}
    pwd
    git status -bs
    echo ''
'

# More flexible impl that will get status of nested dirs. Doesn't work.
# find . -type d -name .git -exec git -C '{}/..' s \;