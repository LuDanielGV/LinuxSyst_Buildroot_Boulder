#bash ./finder.sh /tmp/aeld-data linux

if [ $# -lt 2 ]; then
	echo "not enough arguments"
	exit 1
elif [ ! -d $1 ]; then
	echo "not a filedir"
	exit 1
else
	echo "ok"
fi

#X is the number of files in directory and all subdirectories
X=$(find $1 -type f | wc -l)

#Y is the number of matching lines found in respective files, where a matching line refers to a line which contains searchstr 
#(and may also contain additional content).
Y=$(grep -rc -h $2 $1 | awk '{suma += $1} END {print suma}')

echo "The number of files are $X and the number of matching lines are $Y"

exit 0








