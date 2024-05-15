# Question 10: (16 points)
# 
# Write a script that does the following:
#
# (note: no need to add shebang comment (#!) for this script)  
#
# First, it checks that it received exactly 2 arguments.
# it will also check that both argument 1 and 2 are directories
# if any of those conditions are false, print "error" and exit
# with a nonzero status code (i.e. "exit 1").  [5 points]
#
My Answer:
 if [ "$#" -eq 2 ] && [ -d "$1" ] && [ -d "$2" ]; then
    exit 0
else
    echo "Error"
    exit 1
fi


#
# Second, inside the second directory (argument 2), create a directory
# with the name of the current year. (You can use the date command with "+%Y" format)
# [5 points]
#
today=$(date +%Y)
if [ "$#" -eq 2 ] && [ -d "$1" ] && [ -d "$2" ]; then
	mkdir "$2"/$today
    exit 0
else
    echo "Error"
    exit 1
fi



#
# Third, using "tar", archive and compress the first directory (argument 1) into
# a file called "backup.tar.gz" inside the directory you created earlier.
# [6 points]
#
# Example:
# if the year is 2022 and the script file is q10.sh and we run the following
# command ...
# 
#     bash q10.sh ./dir1 ./dir2
#
# ... The result would be that the contents of dir1 would be packed into
#     ./dir2/2022/backup.tar.gz
#
#
# (note: you can either pack dir1 including itself or just the
#  files inside dir1)
#
# Write the answer for the entire question below:

today=$(date +%Y)
if [ "$#" -eq 2 ] && [ -d "$1" ] && [ -d "$2" ]; then
	mkdir "$2"/$today
	tar -c -z -f backup.tar.gz "$1" && find -name "$2"| cp backup.tar.gz "$2"/$today
    exit 0
else
    echo "Error"
    exit 1
fi


















