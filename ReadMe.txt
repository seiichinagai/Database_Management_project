Instructions on creating the database and setting up the web application:

DESCRIPTION:
This project is a movie database that keeps track of movies, directors, 
writers, actors, and genres.

To run this web application locally, the user must have Apache,
MySQL, and PHP running on their computer along with an operating
system (Windows, OS X, Linux, etc.).
If the user does not have this, please install before continuing.

DEPLOYMENT:
First, take movies.html and getmovieinfo.php files and place
them in the htdocs folder within the XAMPP folder.

Next, start Apache and MySQL.

Continuing, open a web browser and type localhost/phpmyadmin/ into 
the address bar. You now have to import the group11database sql file.

To import the sql file, you must first select import in the 
phpmyadmin tool. Next, choose the group11database.sql file by browsing
your computer. Once you have selected the file, select go in the 
phpmyadmin tool. The sql database is now available to use.

You can now begin to use the application. In your web browser, type
localhost/movies.html. This will take you to the main application
page. Please enter the information you would like to add to all
databases. IMPORTANT Only click a select once all Movie ID boxes
have been filled in. Also, please make sure that any date of birth
you enter is in the correct YYYY-MM-DD (year-month-day) format as
not following this format will cause the DOB you enter to store as
0000-00-00.

After you have submitted your data, you will be redirected to a page
which will confirm that the data you entered was processed and added
to the database. You will see a listing of all the data you entered
as well as multiple tables which display all information contained
in the database. This information is separated into movie, genre,
writer, director, and leading actor.

BUILT WITH:
HTML
PHP
MySQL

WRITTEN BY:
Brittany Fex, John Johnson, Sophia Yu, Seiichi Nagai

DEMO: https://www.youtube.com/watch?v=6M6ag73J_Cg&feature=youtu.be
