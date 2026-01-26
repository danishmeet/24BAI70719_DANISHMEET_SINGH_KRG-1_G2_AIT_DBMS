# Experiment 1.1 – Library Management System Database

## Student Information

| Field    | Details        |
|---------|----------------|
| Name    | Danishmeet Singh|
| UID     | 24BAI70719     |
| Branch  | AIT-CSE (AIML) |
| Section | 24AIT-KRG-1/G2 |
| Semester| 4              |



## Experiment
**Experiment 1.1:** Design and implementation of a Library Management System using PostgreSQL with DDL, DML and DCL commands.

## Aim
The aim of this experiment is to design and implement a Library Management System database using PostgreSQL. The database is created using proper tables, primary keys, foreign keys and constraints. DML operations are performed and database security is implemented using roles and privileges.

## Objective
The objective of this experiment is to gain practical knowledge of DDL, DML and DCL commands in PostgreSQL. It also helps in understanding how to create roles, grant permissions and revoke permissions to secure the database using role based access control.

## Practical / Experiment Steps
1. Design the database structure for the Library Management System.
2. Create tables for books, members and issue records using DDL commands.
3. Apply primary keys, foreign keys and constraints to maintain data integrity.
4. Insert sample records into the tables using DML commands.
5. Update and delete records as required.
6. Create a database role named Librarian.
7. Grant required permissions like SELECT, INSERT and DELETE to the Librarian role.
8. Revoke permissions when needed to ensure database security.

## Procedure of the Experiment
1. Start the system and log in to the computer.
2. Open pgAdmin and connect to PostgreSQL server.
3. Create a new database for the Library Management System.
4. Create tables such as Books, Members and Issue_Records using CREATE TABLE command.
5. Define primary keys and foreign keys while creating the tables.
6. Insert records into tables using INSERT command.
7. Update existing data using UPDATE command.
8. Delete unwanted records using DELETE command.
9. Create a role named Librarian with password using CREATE ROLE command.
10. Grant SELECT, INSERT and DELETE permissions to the Librarian role.
11. Revoke permissions using REVOKE command when required.
12. Execute all queries and verify the output.
13. Save the work and take screenshots of execution and results.

## Code 
## 1. ADMIN
```
CREATE TABLE BOOKS(
	ID INT PRIMARY KEY,
	NAME VARCHAR(20) NOT NULL,
	AUTHOR VARCHAR(20) NOT NULL
);

INSERT INTO BOOKS VALUES(1,'THE ALCHEMIST','PAULO COELHO');

ALTER TABLE BOOKS
ADD COUNT INT CHECK(COUNT>=1);

SELECT * FROM BOOKS;

UPDATE BOOKS 
SET COUNT=5
WHERE ID = 1;

INSERT INTO BOOKS VALUES(2,'THE HOBBIT','TOLKIEN',15);


CREATE TABLE LIBRARY_VISITOR_USER(
	USER_ID INT PRIMARY KEY,
	USER_NAME VARCHAR(20) NOT NULL,
	AGE INT CHECK(AGE>=17) NOT NULL,
	EMAIL_ID VARCHAR(20) UNIQUE NOT NULL
);

INSERT INTO LIBRARY_VISITOR_USER
VALUES(201,'AMAN',22,'AMAN@GMAIL.COM');

INSERT INTO LIBRARY_VISITOR_USER
VALUES(202,'SURESH',25,'SURESH@GMAIL.COM');

SELECT * FROM LIBRARY_VISITOR_USER;

INSERT INTO LIBRARY_VISITOR_USER
VALUES(3,'VIKRAM',20,'VIKRAM@GMAIL.COM');

UPDATE LIBRARY_VISITOR_USER
SET USER_ID = 203
WHERE USER_ID = 3;

ALTER TABLE LIBRARY_VISITOR_USER
ALTER COLUMN EMAIL_ID TYPE VARCHAR(15);

CREATE TABLE BOOK_ISSUE(
	ISSUE_ID INT PRIMARY KEY ,
	BOOK_ID INT REFERENCES BOOKS(ID) NOT NULL,
	USER_ID INT REFERENCES LIBRARY_VISITOR_USER(USER_ID),
	ISSUE_DATE DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO BOOK_ISSUE
VALUES(301,1,201,'2026-02-01');

SELECT * FROM BOOK_ISSUE;


CREATE ROLE LIBRARIAN
WITH LOGIN PASSWORD 'RAKESH101';

GRANT SELECT, INSERT, DELETE, UPDATE ON BOOKS TO LIBRARIAN;


REVOKE SELECT,INSERT,DELETE,INSERT,UPDATE ON BOOKS FROM LIBRARIAN;

```
## 2. LIBRARIAN
```
SELECT * FROM books;
SELECT * FROM book_issue;
SELECT * FROM LIBRARY_VISITOR_USER;

INSERT INTO books VALUES(210,'SHADOWS','MORGAN',4);
INSERT INTO books VALUES(260,'THE QUEST','ARTHUR',9);

DELETE FROM books
WHERE ID = 260;

SELECT * FROM book_issue;
SELECT * FROM LIBRARY_VISITOR_USER;

```
## SCREENSHOTS



## Learning Outcomes
-Understood the basics of relational database design using tables, keys, and relationships.
-Learned to apply primary and foreign key constraints to maintain data integrity.
-Gained hands-on experience with INSERT, UPDATE, and DELETE operations.
-Understood role-based access control using GRANT and REVOKE.
-Learned how to create read-only users for secure data access.
-Practiced ALTER TABLE and DROP TABLE commands for schema management.