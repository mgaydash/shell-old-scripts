#HOST=$1
#ID_FILE=$2

#scp -i ${ID_FILE} ~/.screenrc ${HOST}:~/.screenrc
#scp -i ${ID_FILE} ~/.gitconfig ${HOST}:~/.gitconfig
#scp -i ${ID_FILE} ~/.vimrc ${HOST}:~/.vimrc
#scp -r -i ${ID_FILE} ~/.vim/ ${HOST}:~/.vim/

HOST=$1

scp ~/.screenrc ${HOST}:~/.screenrc
scp ~/.gitconfig ${HOST}:~/.gitconfig
scp ~/.vimrc ${HOST}:~/.vimrc
