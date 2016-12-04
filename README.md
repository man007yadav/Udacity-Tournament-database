# Udacity-Tournament-Database

Udacity-tournament-database is a simple database project completed for Udacity's full-stack [nanodegree program](https://www.udacity.com/nanodegree) program. The project demonstrates the design and use of a PostgreSQL database to manage a [swiss-system tournament](http://en.wikipedia.org/wiki/Swiss-system_tournament), which is a non-elimination tournament system used in certain sport and game competitions.   

### Requirements

Python 2.7:
 - `bleach`
 - `psycopg2`

Postgres CLI >= 9.2 (to use parameter names in SQL functions)

### Installation

You will get the best compatibility using the Udacity-provided VM with Virtualbox/Vagrant. You can fork/clone this from [this GitHub repo](https://github.com/udacity/fullstack-nanodegree-vm). Alternatively, ensure your system has the above listed requirements.

**Using the Vagrant Virtual Machine:**

The Vagrant VM has PostgreSQL installed and configured, as well as the psql command line interface (CLI), so that you don't have to install or configure them on your local machine.
To use the Vagrant virtual machine, navigate to the full-stack-nanodegree-vm/tournament directory in the terminal, then use the command `vagrant up` (powers on the virtual machine) followed by `vagrant ssh` (logs into the virtual machine).  
Remember, once you have executed the vagrant ssh command, you will want to `cd /vagrant` to change directory to the synced folders in order to work on your project, once your cd /vagrant, if you type ls on the command line, you'll see your tournament folder.
The Vagrant VM provided in the fullstack repo already has PostgreSQL server installed, as well as the psql command line interface (CLI), so you'll need to have your VM on and be logged into it to run your database configuration file (tournament.sql), and test your Python file with tournament_test.py.

**Using the psql command line interface:**

The very first time we start working on this project, no database will exist - so first, we'll need to create the SQL database for our tournament project. From psql, we can do this on the command line directly using a create statement or by importing `tournament.sql` (which then executes whatever commands are in the .sql script).
`tournament.sql` is where we'll create our database schema and views; we also have the option of creating the database and tables in this file.
With psql, you can run any SQL query on the tables of the currently connected database.
When using psql, remember to end SQL statements with a semicolon, which is not always required from Python.
To build and access the database we run `psql` followed by `\i tournament.sql`




### Database Setup

Navigate to the cloned tournament repository in a shell. Make sure you have a psql user with database creation permissions set up. Make sure you don't have any important database named "tournament" set up, and then run the following command in the psql CLI: `\i tournament.sql`. This sets up and connects to a fresh "tournament" database with the schema laid out in the file tournament.sql.

### Understand the purpose of each file

-tournament.sql  - this file is used to set up your database schema (the table representation of your data structure).
-tournament.py - this file is used to provide access to your database via a library of functions which can add, delete or query data in your database to another python program (a client program). Remember that when you define a function, it does not execute, it simply means the function is defined to run a specific set of instructions when called.
-tournament_test.py - this is a client program which will use your functions written in the tournament.py module. We've written this client program to test your implementation of functions in tournament.py


### Testing

A testing suite is provided (slightly modified and expanded on from the default Udacity set) in tournament_test.py. These can be run using `python tournament_test.py`
