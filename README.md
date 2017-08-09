#Data-Generator

The purpose of the project is to design and implement Data Generator for SAP solutions, for creating realistic data sets. Using the meta information of business processes involved in SAP ERP, data types for the generator are defined. Data can be generated as per user requirement of the data types. This data can be used for analysis purposes in SAP BW.

Data Generator runs on Xampp server. MySQL workbench acts as a user interface for accessing the MySQL Database for Data generation.

Steps for Installing Xampp server: XAMPP is a free and open source cross-platform web server solution stack package. This could be

downloaded here.

Once downloaded, open the setup file. Click Next.
Select Components screen would appear. All the necessary components are already preselected. Now, click Next untill setup process finishes
Open the XAMPP server using the launch icon.
On the User Control Panel, Click Start button for Apache server.
Make sure to Start with Administrator rights by clicking on the Admin button if needed.
Apache server uses Port number 80, 443.
Steps for Installing MySQL workbench: MySQL workbench can be downloaded here

Open the setup file and select Run.
On the User account control, Click Yes.
On the MySQL Installer screen, accept the license agreement after reading the instructions.
Click Next
Select Custom in the Choosing a Setup Type screen. Click Next.
On the Select Products and Features, select the MySQL servers and click the transferbutton so that it appears in the Products/ Features to be Installed tab.
Select the MySQL server in Products/ Features to be Installed tab so that the Next button is enabled.
Click Next.
On the Installation screen, click Execute and the installation starts.
Once the installation is complete, Next button pops up and select Next.
On the Product configuration screen select Next.
On the Type and Networking screen, select Development machine for Config type.
For Connectivity, select TCP/IP with port number 3306 and Open Firewall port for Network access. Select Next
On to the Account and Roles screen, Create a new MySQL Root Password.
For MySQL User Accounts, click Add User and MySQL User Details pops up.
Create a new Username with Host as All Hosts, Role as DB Admin and Authentication as MySQL. Create a new Password. Confirm by selecting OK.
Then the newly created username appears on the MySQL User accounts. Select Next.
Click Next on Windows service screen without changing the default values.
Select execute on the Apply Server Configuration screen. Configuration process starts accordingly.
Once the configuration is done. Click Finish.
Select Next on the Product configuration screen. Click Finish.
Now open the MySQL Workbench
Select the Username created earlier and enter the password.
Once login is successful, MySQL workbench can be used for accessing the Database files.
EXECUTION INSTRUCTIONS:

First run database file using MySQL workbench. This should generate database and tables with default data.
Place project in Xampp/htdocs and unzip it.
Go to database/ folder and open DBHandler.php file.
Enter username and password of your MySQL connection and save the file.
Start apache in XAMPP control panel.
Open browser and enter localhost/DataGenerator.
Steps for data generation:

Select the Customer button
Select year
Type in the fields needed under Column Title and select the corresponding Data type.
Select the Add New button for additional rows.
Select the format of export data – Excel / CSV / JSON
Click on Generate. Export Files are generated.
