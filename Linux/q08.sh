# Question 8: (8 Points)
# a) Give one reason for using "find" and not "locate" to find files:
# Write your answer for part "a" below:
Reason why to use the command Find instead of Locate:
With the find command, you don't need to update the database every time,
 unlike the locate command, where you need to update the database
with the command: sudo updatedb, so that it finds all the files
 (even files that were updated a few seconds ago)
In addition to that, it is possible with the find command to perform
several operations together compared to locate which is not possible:
For example: find -name "*.txt" -exec tar -c -z -f imtar.tar.gz {} ';'

# b) Give one reason for using "locate" and not "find" to find files:
# Write your answer for part "b" below:

Reason why to use the Locate command and not the Find command:
Locate is a really fast command unlike find which will probably take more time,
In addition, the syntax of the long find command is cumbersome
 and full of flags, unlike the locate command,
 which is terribly short and focused,
For example: find -name "eladtest.txt vs: locate eladtest.txt