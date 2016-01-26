# SQL Activity for CPSC113

Prior to class you read about relational databases and how they store structured
data to enable sophisticated querying. The readings are on the
[class website](https://cpsc113.som.yale.edu/lectures/relational-databases).

In this activity, we will practice the creation of database schemas, and querying
of data. We'll use some movie reviews based on [this activity from
Stanford](https://lagunita.stanford.edu/courses/DB/SQL/SelfPaced/courseware/ch-sql/seq-exercise-sql_movie_mod/).

## How to complete this activity

### Step 0

Find a partner or two in class.

### Step 1

Clone this repository to either your computer or [Cloud9](http://c9.io) or similar
platform where you can use a shell and [sqlite](https://www.sqlite.org/). This is
pre-installed on Cloud9. If you're on a mac, you likely also have it pre-installed.
(You can type `which sqlite3` to see if you do.)

We are using sqlite instead of other RDBMS such as
[PostgreSQL](http://www.postgresql.org/) or [MySQL](https://www.mysql.com/)
because it is easy to set up.

To clone this repo, you'll likely use this command

```
git clone https://git.yale.edu/cpsc-113-spring-2016/sql-activity
```

or this command if you're on Cloud9 and not on the Yale VPN

```
git clone https://github.com/yale-cpsc-113/sql-activity
```


### Step 2

Create a file called `class-members.txt` and populate it with the course nicknames
of the persons in your group. Mine would look like this

```
rich-frog
silly-goat
boring-snake
```

You can find your nickname in the [course profile](https://cpsc113.som.yale.edu/profile).
Add that file to your repo with `git add class-members.txt` and commit
it with `git commit`.

### Step 3

Look at the `rating.sql` file. Therein lay some SQL statements around which
we've placed code comments. You'll be filling in missing code in there everywhere
you see `TASK _:`. For example, the first task is to complete the schema of the
database.

### Step 4

Complete the tasks. Each time you alter the code, you can run it like

```
sqlite3 -echo my-movie-database.db <rating.sql
```

The `<` symbol feeds the `rating.sql` file into the `STDIN` file descriptor
for the sqlite3 program. It is a common way to get data into a program that
you would normally type into. The `-echo` option to sqlite will cause the
program to output the result of all your commands.

### Step 5

After you complete each task, make a git commit with a descriptive message.

### Step 6

After you complete all the tasks, or we stop the activity, push your repo
up to [git.yale.edu](http://git.yale.edu) in a new public repo. We'll be
able to see it. This will only be graded for participation. If you're working
on Cloud9, you won't be able to do that, so you can instead push to github.
