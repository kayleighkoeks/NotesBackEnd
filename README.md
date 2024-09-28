RUN PROJECT
node app.js

# MAKE SURE TO HAVE NODE.JS DOWNLOAED ON YOUR SYSTEM

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# download and install Node.js (you may need to restart the terminal)
nvm install 20

# verifies the right Node.js version is in the environment
node -v # should print `v20.17.0`

# verifies the right npm version is in the environment
npm -v # should print `10.8.2`


# To connect your Node.js app to a PostgreSQL database, install the pg package:

npm install pg
npm install next-auth

-------

To list all your PostgreSQL databases, use the following command 
psql -l
This will display a list of all the databases in your PostgreSQL instance.

2. Connect to Your Database
If you want to connect to the database you created, run the following command:
psql database


brew services start postgresql
psql -h localhost -U kayleighkoekemoer -d database -f ./database_schema.sql
psql -h localhost -U kayleighkoekemoer -d database
