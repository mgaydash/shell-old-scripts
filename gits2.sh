#!/bin/bash

cd $*
if [ -a .git ]
	then
		red='\033[0;96m'
		NC='\033[0m'
		pwd | xargs -I {} echo -e "${red}{}${NC}"
		git status -bs
fi

