**Document Management System** is a web application for storing and sharing documents. The project is in it's initial phase and can not be used for real world purposes. However you are free to checkout the source and modify it for your personal use.

I shall contribute to the project as and when i get time.

Please feel free to post comments on my blog and let me know if you wish any feature and i shall try to implement it for you.

Project's blog : http://bharatonjava.wordpress.com/document-management-system

Developer Email: ibharatsharma@gmail.com

**Currently available Features**
  1. Document Upload
  1. Listing documents based on upload date
  1. document Download
  1. Search based on keywords, document name
  1. Document Delete
  1. Authentication and security - user needs to login and can see docs uploaded by him only.


**Features to be implemented**

  1. Sorting
  1. history
  1. improved User Interface
  1. Forms for registering new users on the application
  1. Deleting users from application


**Configuration Instructions**
  1. Download latest WAR file from downloads section.
  1. Drop downloaded WAR in webapps directory of your Tomcat server.
  1. Start Tomcat - This will explode the WAR file.
  1. Stop Tomcat - look for the file placeholder.properties in the exploded project and configure your database properties there. This project can run on any database.(I use mysql for development purposes.)
  1. look for file dms.sql in src/main/resources directory. This file contains database script for the project.
  1. Start Tomcat and type http://localhost:8080/document-management-system in your browser.
  1. That's all folks.


**Hardware/Software requirements**
  1. windows/unix
  1. Apache Tomcat 6.0
  1. JDK 1.6