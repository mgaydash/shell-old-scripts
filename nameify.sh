FILE=$1

if [[ -z "$FILE" ]]; then
 echo "usage: namify <file path>"
fi

NEW_FILE=$(echo $FILE | sed -e 's/ /_/g' -e 's/\(.*\)/\L\1/')
mv "$FILE" "$NEW_FILE"

# echo $FILE | tr ' ' '_' | tr '[:upper:]' '[:lower:]'

