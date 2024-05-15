# Question 7: (12 Points)
# a) Explain how the "r" permission affects directories?
#    Also, write an example of a command that won't work without
#    this permission
#
# Write your answer for part "a" below:
For example the command: chmod -r dir1,
A command after which it will not be possible to see what is in the folder
, that is, do the "ls" command for the dir1 folder because
 there are no read permissions and therefore access is denied,
#ls dir1

# b) Explain how the "w" permission affects directories?
#    Also, write an example of a command that won't work without
#    this permission
#
# Write your answer for part "b" below:
For example the command chmod -w dir1
A command after which it will not be possible to
 add a file/rename it/delete it/copy it because
we canceled the write permissions to the folder.
Commands that will not work:
touch, cp, mv, rm

# c) Explain how the "x" permission affects directories?
#    Also, write an example of a command that won't work without
#    this permission
#
# Write your answer for part "c" below:

For example the command chmod -x dir1
A code after which it will not be possible to execute permissions on the folder,
 for example cd command
#cd = a command that allows you to enter the folder if you have +X permissions


