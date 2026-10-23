# bash ./writer.sh /tmp/aeld-data/temp3.txt linux

writefile="$1"
writestr="$2"

if [ $# -lt 2 ]; then
    echo "not enough arguments"
    exit 1
fi

# Create the parent directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the string to the file
if ! echo "$writestr" > "$writefile"; then
    echo "Error: could not create file"
    exit 1
fi

exit 0







