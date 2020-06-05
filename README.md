# Bookmark web-app
The website will have the following specification:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks


# Stories n.1
* As a time-pressed user
* So that I can quickly go to web sites I regularly visit
* I would like to see a list of bookmarks

Class 			|    Methods
Bookmark		     #save_list

Class 			|    Methods
Bookmark		     #show_list

# Stories n.2
* As a time-pressed user
* So that I can save a website
* I would like to add the site's address and title to bookmark manager


# DATABASE COMMAND INSTRUCTIONS

1. psql
2. CREATE DATABASE bookmark_manager;
3. \c bookmark_manager;
4. \dt
5. CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

First lets create a directory for the database setup called db, and a sub-directory within it, migrations.

1. - db/
2.   - migrations/
3. 01_create_bookmarks_table.sql
4. 02_add_title_to_bookmarks.sql



Follow these steps to set up the bookmarks_manager database:

  1) Connect to `psql`  :    psql postgres
2) Create the database running `CREATE DATABASE bookmark_manager;`
 3) Connect to the database using the pqsl command `\c bookmark_manager;` 
4) Run the query we have saved in the file `01_create_bookmarks_table.sql '
