Training Project - 9 points
Create ROLE with 7 tasks
1 - 5 ( copy file 1.txt to host.  use loop to print 3 time some message,  print os_family of host, create (text)variable and print it )
6 - 8 ( use delegate_to: )  ( to save host-ip in log.txt on master,  reboot host  and then save to log.txt the time  then host rebooted ) 


Final Project - 91 points
Create Role what 
1.install some packages (htop, tree . . .)
2. update system
3. install Apache/httpd
4. Then copy files to hosts
5. Print how many RedHat and how many Debian(Ubuntu) hosts 
   (only 1 time)




Description of the roles in the project:

ping.yml - only task ping.

installs.yml - tasks: install python, install net-tools, install tree, install htop.

install_apache.yml - tasks: install Apache and chack if port 80 open. in addition every time the program shows an error (for example, port 80 is closed), the program automatically stops by adding the command in the install_apache.yml file:    any_errors_fatal: true

Server.yml - tasks will show you while server is Debian/Redhat

servers_new.yml - like as Server.yml but this is the another solution (This is the solution you explained to me on the phone)