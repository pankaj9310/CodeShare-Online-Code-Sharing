#CodeShare - Online Code Sharing

Code Share is a platform for coders to discuss coding problems of different domains, provide tutorials of different
Algorithms topicwise and related problems on different online judges for practice.

##Core Technologies Used 

 Why Choose Java : Java makes the Application platform Independent .“Write Once, Run Anywhere”

- BackEnd : - J2SE,J2EE,JSTL,JUNIT
- FrontEnd : Twitter Bootstrap,Ajax,jQuery,JSON,CSS,HTML 
- Database : Mysql

##Features


- CodeShare makes it easy to share what matters most in your Programming world !!


	+ User can share codes
	+ User can upload Problems
	+ User can write Tutorials on different Topics
	+ User can search Problems of different categories
	+ User can ask a Question
	+ User can Give answer to other Queries
	+ User View sourcecodes of Others




##Pre-requisites


- Download and install Netbeans 7.1 : Quickly and easily develop desktop, mobile and web applications
with Java, JavaScript, HTML5, PHP, C/C++ and more.NetBeans IDE is FREE, open source, and has a worldwide community of users and developers. 

	+ Select Platform Linux x64 & all section
	+ https://netbeans.org/downloads/

	+In terminal,navigate to download directory & run
```bash
	sh netbeans-8.1-linux.sh
```
	+ select tomcat server instead of glassfish during installation


- Update your system : Ubuntu Source list generator: https://repogen.simplylinux.ch/generate.php

```bash
	sudo apt-get update
	sudo apt-get upgrade
```

- Install MySQL

```bash
	sudo apt-get install mysql-server
```

	+ Start/Stop Mysql server 
	
	```bash
		sudo service mysql start
		sudo service mysql stop
	```

	+ To log in to MySQL as the root user:
	
	```bash
		mysql -u root -p
	```

	+ Create a New MySQL User and Database

	```sql
		create database testdb;
		create user 'testuser'@'localhost' identified by 'password';
		grant all on testdb.* to 'testuser';
	```




- Install phpmyadmin : phpMyAdmin is a web application that provides a GUI to aid in MySQL database administration

	+ Step 1: Install Apache2, PHP and MySQL. We assume you already have installed LAMP on your system.

		- Install Apache 
		```bash
			sudo apt-get install apache2
			sudo service apache2 restart
		```

		- Install PHP

		```bash
			sudo apt-get install php5
		```
				
		-If you need MySQL support also install php5-mysql
		
		```bash
			sudo apt-get install php5-mysql
		```

	+ Step 2: Install phpMyAdmin.

	```bash
		sudo apt-get install phpmyadmin
	```

		- After the installation has completed, add phpmyadmin to the apache configuration.
		```bash
			sudo vi /etc/apache2/apache2.conf
		```

		- Add the phpmyadmin config to the file.
		```bash
			Include /etc/phpmyadmin/apache.conf
		```

		- Restart apache:
		```bash
			sudo service apache2 restart
		```

##Database Import

-create database codeshare on Mysql
-Import codeshare.sql database from phpmyadmin
- Download the repository in Extract to NetBeansProjects folder of your home directory
- Open Netbeans and import project 
- Change Config.java in src/java/connection/Config.java

```java
    String url = "jdbc:mysql://localhost:3306/codeshare";
    String user = "YOUR_DB_USER";
    String pass = "YOUR_DB_PASS";
```

##To Run : 

- Right click on Project codeoj & select deploy to run the project