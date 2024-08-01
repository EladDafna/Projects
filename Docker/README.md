The purpose of the assignment: to create a CI/CD with the help of Jenkins performs the following actions:

Building a Docker Image that contains an Apache server with a custom HTML file.
Running a Docker Container that runs the Apache server and testing it.
Upload Docker Image to Docker Hub.
Requirements:

Writing a Dockerfile that contains:

Installation of Apache server on Ubuntu system.
Setting the time zone for Jerusalem.
Copy a custom HTML file to the appropriate location on the server.
Exposing port 80.
Set Apache server run command.
Writing a Jenkinsfile that performs the following steps:

Building a Docker Image from the Dockerfile you wrote.
Running a container from the Docker Image you built, checking the integrity of the server by running a container and copying an HTML file to the container.
Uploading the Docker Image to Docker Hub.



Explanation of the project solution:
Explanation of the project:
1. Open the terminal and write:
docker run -d --name jenkins_container -p 8081:8080 -p 50000:50000 -v /home/docer/volume_jenkins:/var/jenkins_home -v /var/run/docer.sock:/var/run/docer.sock Jenkins/Jenkins

2. Docker exec -it <container id> bash

3. Cat ~/.ssh/id_rsa_pub -> copies the public key to GitHub
4. Make a fingerprint by git clone <ssh url>
5. Open another cam terminal and enter the same container only as root by the command:
Docker exec -it -u=root <container id> bash

6. In the root terminal install all these packages:
apt update - updates all packages
apt install sudo – installs the sudo package (because it is not there yet)
sudo passwd Jenkins (making a password for the jenkins user so I can use sudo commands with it)
usermod -aG sudo Jenkins – adds the jenkins user to the sudo group, of course after he logs out and logs in so that the sudo group applies to the user.
sudo apt install nano – because there is no text editor

7. Open a file with my password in Git Hub (I called it mypassword.txt),
Option 2 can be done by editing sudo visudo and making the jenkins user not need a password.

8. I opened 2 Secret Variables to connect to the Docker hub

*at finally i run the Jenkinsfile and the Dockerfile
