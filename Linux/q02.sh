# Question 2: (8 points)
# The following paths exist:
#     /home/a/data/info.txt
#
#     /home/b/backup/
#
# you are logged in as user "a", and your current working directoy is
# that user's home directory.
#
# write a single command that will copy info.txt into b's backup folder.
# (assume you have permissions to enter and write into backup)
#
# a) write that command using realtive paths only (using ~ or environment
#    variables is not allowed. both source and destination should be written
#    as relative path):
#
# Write your answer for part a below this line:
cp ./data/info.txt ../b/backup/

#/home/a/data/info.txt
#/home/b/backup/


# b) write that command using absolute paths only (using ~ or environment
#    variables is not allowed. both source and destination should be written
#    as absolute path):

# Write your answer for part b below this line:
cp /home/a/data/info.txt /home/b/backup/

