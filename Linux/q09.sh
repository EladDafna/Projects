# Question 9: (16 points)
#
# write a script that will check all the arguments received.
# for each one, if it's the name of an executable file and not a directory
# count it. print how many files were counted this way.
#
# (note: arguments are NOT input. Do not use read command)
#
# (note: no need to add shebang comment (#!) for this script)  
#
# Write your answer below:

count=0

for arg in "$@"; do
    if [ -f "$arg" ] && [ -x "$arg" ] && ! [ -d "$arg" ]; then
        count=$((count+1))
    fi
done

echo "Number of files were counted are: $count"
