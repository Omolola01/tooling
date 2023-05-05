# tooling

## Webserver
 The followig steps should be done on the 3 webserver instance
`sudo yum install nfs-utils nfs4-acl-tools -y` Install NFS client

#Mount /var/www/ and target the NFS server’s export for apps
 `sudo mkdir /var/www`

 `sudo mount -t nfs -o rw,nosuid <NFS-Server-Private-IP-Address>:/mnt/apps /var/www`
 `df -h` to verify if nfs was properly mounted succesfully
 `sudo vi /etc/fstab`
 <NFS-Server-Private-IP-Address>:/mnt/apps /var/www nfs defaults 0 0

 sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y orsudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm 
   sudo yum install yum-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm or sudo dnf update system-release
   `sudo yum install httpd -y`
   `sudo yum module list php`    
    `sudo yum module reset php`
    `sudo yum module enable php`
    `sudo yum install php php-opcache php-gd php-curl php-mysqlnd`
    `sudo systemctl start php-fpm`
    `sudo systemctl enable php-fpm`
    `sudo systemctl status php-fpm`
    `sudo setsebool -P httpd_execmem 1`
    
#Do this for the  two remaining webserver

  `sudo yum install httpd -y`

 `sudo ls /var/log/httpd to check for apache log file`

 `sudo mount -t nfs -o rw,nosuid NFS-SERVER-PRIVATE-ID:/mnt/logs /var/log/httpd`
 `sudo vi /etc/fstab`
 <NFS-Server-Private-IP-Address>:/mnt/logs /var/www nfs defaults 0 0

#Fork the tooling source code from [here](https://github.com/darey-io/tooling)

 `sudo yum install git`  to install git
  `git init`
  `git clone https://github.com/darey-io/tooling.git`

 `ls`
 `cd tooling`
 `ls /var/www  to check ap`

  `sudo cp -R html/. /var/www/html`

  #To confirm the copy
  `ls /var/www/html`
    `ls html`

  #open port 80
  ![port 80](./Images/port-80.PNG)
  #open webserver ip on browser, If it doesn't work, check if apache is running, if not
  ![Browser-image](./Images/browser-end.PNG)


   `sudo setenforce 0`
   `sudo vi /etc/sysconfig/selinux`
  set SELINUX=disabled

 #Update the website’s configuration to connect to the database
  `sudo vi /var/www/html/functions.php` to Apply tooling-db.sql script to your database using this command
 $db = mysqli_connect('database-private-ip', 'webaccess', 'password', 'tooling');
 ![configuration image](./Images/configuration.PNG)

  `cd tooling`
  `sudo yum install mysql`
   `mysql -h 172.31.32.247 -u webaccess -p tooling < tooling-db.sql`

#If you have issues when loging t your user in mysql
Add mysql/aurora on  webserver
   ![Mysql-aurorq](./Images/aurora.PNG)
   `sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf`
   change the bind address and mysql address to 0.0.0.0

    #In webserver 
    `sudo mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.backup`

   ![index page](./Images/index.PNG)

#Create in MySQL a new admin user with username and password
#INSERT INTO ‘users’ (‘id’, ‘username’, ‘password’, ’email’, ‘user_type’, ‘status’) VALUES
-> (1, ‘myuser’, ‘5f4dcc3b5aa765d61d8327deb882cf99’, ‘user@mail.com’, ‘admin’, ‘1’);

Open the website in your browser http://<Web-Server-Public-IP-Address/index.php
Make sure you can login into the websute with myuser user.![alt text](image.jpg)

![wordpress-image](./Images/wordpress-image.PNG)
![login page](./Images/log-in.PNG)

## Project 8: CONFIGURE APACHE AS A LOAD BALANCER

#Continuing from previous project
#Create an Ubuntu Server 20.04 EC2 instance and name it Project-8-apache-lb
#ssh into instance
#Open TCP port 80 on Project-8-apache-lb

Check jenkins                                                                                
                                                                                
                                                                                
                                                                                
