# Question 6: (12 points)
#
# a) Write a command to change your IP to 10.0.0.100 with a netmask that uses the first 16 bits
#     for the subnet
#    (the first 16 bits = the first 2 bytes, the first two "numbers" out of four)
#
# Write your answer for part a below:

I will write here the order of actions I would do to do this:
1. ifcofnig
  or alternatively ip address show -
  To see what the name of the network interface is, for my example it is: enp0s3

2. sudo ifconfig enp0s3 10.0.0.100 netmask 255.255.0.0
   Or alternatively
sudo ip address add 10.0.0.100/16 dev enp0s3 and immediately after
does the same command only del on the old address that I don't use.


# b) write a command that will test that you can connect to the URL "rt-ed.co.il" from
#    your PC
#
# Write your answert for part b below:

ping rt-ed.co.il
