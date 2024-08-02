# Zabbix Monitoring Setup

## Overview
Zabbix is an open-source monitoring solution that provides various functionalities for server monitoring, including performance metrics and server health checks. This README guides you through setting up Zabbix with MariaDB, Zabbix Agent, and Zabbix Server.

## Prerequisites
- Ubuntu-based system
- Root or sudo privileges

## Installation and Configuration

### 1. Initial Setup
Update your package list and install essential tools:
```bash
sudo apt update
sudo apt install openssh-server openssh-client net-tools
```

### 2. Install Apache Web Server
```bash
sudo apt update
sudo apt install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
```

### 3. Install and Configure PHP
```bash
sudo apt install php-cli php-common php-dev php-pear php-gd php-mbstring php-mysql php-xml php-bcmath libapache2-mod-php
```

Edit PHP configuration files:
```bash
sudo nano /etc/php/8.1/apache2/php.ini
sudo nano /etc/php/8.1/cli/php.ini
```
Add the following lines to the end of both files:
```ini
date.timezone = Asia/Jerusalem
max_execution_time = 600
max_input_time = 600
memory_limit = 256M
post_max_size = 32M
upload_max_filesize = 16M
```
Restart Apache:
```bash
sudo systemctl restart apache2
```

### 4. Install and Configure MariaDB
```bash
sudo apt install mariadb-server mariadb-client
sudo systemctl start mariadb
sudo systemctl enable mariadb
```

Secure MariaDB and configure the root password:
```bash
sudo mysql_secure_installation
```
- Set a root password (e.g., `hakase-labs@`)
- Answer `Y` to all other questions

Create Zabbix database and user:
```bash
mysql -u root -p
```
```sql
CREATE DATABASE zabbix CHARACTER SET utf8 COLLATE utf8_bin;
GRANT ALL PRIVILEGES ON zabbix.* TO zabbix@'localhost' IDENTIFIED BY 'hakase-labs@';
GRANT ALL PRIVILEGES ON zabbix.* TO zabbix@'%' IDENTIFIED BY 'hakase-labs@';
FLUSH PRIVILEGES;
EXIT;
```

### 5. Install Zabbix
Download and install the Zabbix repository:
```bash
wget https://repo.zabbix.com/zabbix/4.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.4-1+bionic_all.deb
sudo dpkg -i zabbix-release_4.4-1+bionic_all.deb
sudo apt update
```

Install Zabbix Server, Frontend, and Agent:
```bash
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent
```

Import initial database schema:
```bash
wget https://git.zabbix.com/projects/ZBX/repos/zabbix/browse/database/mysql/schema.sql.gz?raw -O schema.sql.gz
zcat /usr/share/zabbix-server-mysql/schema.sql.gz | mysql -uzabbix -phakase-labs@ zabbix
zcat /usr/share/zabbix-server-mysql/images.sql.gz | mysql -uzabbix -phakase-labs@ zabbix
zcat /usr/share/zabbix-server-mysql/data.sql.gz | mysql -uzabbix -phakase-labs@ zabbix
```

Configure Zabbix Server:
```bash
sudo nano /etc/zabbix/zabbix_server.conf
```
Update the following lines:
```ini
DBHost=localhost
DBPassword=hakase-labs@
```

Start and enable Zabbix Server:
```bash
sudo systemctl start zabbix-server
sudo systemctl enable zabbix-server
sudo systemctl status zabbix-server
```

Configure Zabbix Agent:
```bash
sudo nano /etc/zabbix/zabbix_agentd.conf
```
Update or add:
```ini
Server=127.0.0.1
ServerActive=127.0.0.1
Hostname=zabbix18
```

Start and enable Zabbix Agent:
```bash
sudo systemctl start zabbix-agent
sudo systemctl enable zabbix-agent
sudo systemctl status zabbix-agent
```

Access Zabbix web interface:
Open your browser and navigate to `http://<YOUR_IP>/zabbix`
- Use default login credentials:
  - User: `Admin`
  - Password: `zabbix`

### 6. Configure Email Notifications
Go to:
- `Administration -> Media Types -> Create media Type`
  - SMTP server: `smtp.gmail.com`
  - SMTP server port: `465`
  - SMTP email: `eladdaf@gmail.com`
  - SSL: Checked
  - Username: `eladdaf@gmail.com`
  - Password: Use the App password from Gmail

Set up message templates and user notifications:
- `Administration -> Users -> Media -> Send to: eladdaf@gmail.com`
- Create actions in `Configuration -> Actions` for the triggers.

### 7. Configure Additional Zabbix Agents
On additional servers:
```bash
wget https://repo.zabbix.com/zabbix/4.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.4-1+bionic_all.deb
sudo dpkg -i zabbix-release_4.4-1+bionic_all.deb
sudo apt update
sudo apt install zabbix-agent
```

Configure Zabbix Agent:
```bash
sudo nano /etc/zabbix/zabbix_agentd.conf
```
Update:
```ini
Server=127.0.0.1,192.168.1.170,192.168.1.166
Hostname=kubernetes-worker
```

Start and enable Zabbix Agent:
```bash
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent
```

Configure Firewall:
```bash
sudo ufw allow 10050/tcp
sudo ufw reload
```
If firewall is not enabled, enable it:
```bash
sudo ufw status
sudo ufw logging on
sudo sed -ie 's/ENABLED=no/ENABLED=yes/' /etc/ufw/ufw.conf
sudo ufw reload
```
Ensure port 22 (SSH) is open:
```bash
sudo ufw allow 22/tcp
```

### 8. Add Hosts and Templates
In Zabbix frontend:
- Add new hosts: `Configuration -> Hosts -> Create Host`
- Set host groups and add items to monitor CPU, memory, etc.

Set up triggers and templates as needed.

## Conclusion
You have successfully set up Zabbix for monitoring with MariaDB and additional agents. For troubleshooting, refer to log files located in `/var/log/zabbix/`.

For further details, consult the [Zabbix Documentation](https://www.zabbix.com/documentation/current/manual/installation).

```

Feel free to adjust the instructions based on your specific needs or setup!
